/-
Copyright (c) 2026 The QPainleve contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: The QPainleve contributors
-/
module

public import Mathlib.Algebra.BigOperators.Ring.Finset
public import Mathlib.Data.Finset.Max
public import Mathlib.Data.Multiset.Count
public import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Greedy preparation of the positive section in Sarkisov descent

[Specified toric factorization](https://github.com/q-painleve-lean/QPainleveRoadmap/blob/main/QPainleveRoadmap/SignedClusterModularGroup/README.md#51-指定された双有理写像の因数分解)
-/

public section

namespace QPainleve.Sarkisov

open scoped BigOperators

/-- Evaluating the anticanonical secondary degree at the two endpoints gives
the same change for a pivot on either invariant section. -/
theorem anticanonical_secondary_change (a b k u : ℤ) :
    (2 * (a - u) + (2 - (k - 1)) * b - 3) - (2 * a + (2 - k) * b - 3) = b - 2 * u ∧
    (2 * (a + b - u) + (2 - (k + 1)) * b - 3) - (2 * a + (2 - k) * b - 3) = b - 2 * u := by
  constructor <;> ring

/-- For a plane net on the Hirzebruch surface of index `k`, the number of
exceptional orders above half the ruling degree bounds `k`. All orders in
the selected set must be at most the fiber degree. -/
theorem hirzebruch_index_le_card_add_one {ι : Type*} [Fintype ι]
    (s : Finset ι) (m : ι → ℤ) {k a b : ℤ} (hb : 0 < b) (hnef : k * b ≤ a)
    (hpos : ∀ j, 0 ≤ m j) (hbig : ∀ j ∈ s, m j ≤ b)
    (hsmall : ∀ j ∉ s, 2 * m j ≤ b)
    (hsq : ∑ j, m j ^ 2 = 2 * a * b - k * b ^ 2 - 1)
    (hsum : ∑ j, m j = 2 * a + (2 - k) * b - 3) :
    k ≤ (s.card : ℤ) + 1 := by
  classical
  have bound (j : ι) :
      2 * m j ^ 2 ≤ b * m j + (if j ∈ s then b ^ 2 else 0) := by
    by_cases hj : j ∈ s
    · simp only [hj, ↓reduceIte]
      nlinarith [mul_nonneg (sub_nonneg.mpr (hbig j hj))
        (show 0 ≤ b + 2 * m j by linarith [hpos j])]
    · simp only [hj, ↓reduceIte]
      nlinarith [mul_nonneg (hpos j) (sub_nonneg.mpr (hsmall j hj))]
  have total := Finset.sum_le_sum (s := Finset.univ) (fun j _ ↦ bound j)
  rw [← Finset.mul_sum, Finset.sum_add_distrib, ← Finset.mul_sum, hsq, hsum] at total
  have hcard : (∑ j : ι, if j ∈ s then b ^ 2 else 0) = (s.card : ℤ) * b ^ 2 := by
    simp [Finset.sum_const]
  rw [hcard] at total
  by_contra! h
  have hk : (s.card : ℤ) + 2 ≤ k := by omega
  nlinarith [mul_nonneg (sub_nonneg.mpr hk) (sq_nonneg b),
    mul_nonneg (sub_nonneg.mpr hnef) hb.le]

/-- If each elementary transformation replaces one order `m` by `b-m`
(up to reordering, with zero entries padded), at most one new high order
appears per transformation. -/
theorem count_high_after_preparation (b : ℤ) (orders : ℕ → Multiset ℤ) (k : ℕ)
    (steps : ∀ i < k, ∃ (m : ℤ) (rest : Multiset ℤ),
      orders i = m ::ₘ rest ∧ orders (i + 1) = (b - m) ::ₘ rest) :
    (orders k).countP (fun m ↦ b < 2 * m) ≤
      (orders 0).countP (fun m ↦ b < 2 * m) + k := by
  induction k with
  | zero => simp
  | succ k ih =>
    have prev := ih (fun i hi ↦ steps i (Nat.lt_succ_of_lt hi))
    obtain ⟨m, rest, hbefore, hafter⟩ := steps k (Nat.lt_succ_self k)
    rw [hbefore, Multiset.countP_cons] at prev
    rw [hafter, Multiset.countP_cons]
    split_ifs at * <;> omega

private theorem exists_first_max {ι : Type*} [LinearOrder ι] (m : ι → ℤ)
    (s : Finset ι) (hs : s.Nonempty) :
    ∃ i ∈ s, (∀ j ∈ s, m j ≤ m i) ∧ ∀ j ∈ s, m i ≤ m j → i ≤ j := by
  classical
  obtain ⟨v, hv, hmax⟩ := s.exists_max_image m hs
  let peaks := s.filter (fun j ↦ m j = m v)
  have hn : peaks.Nonempty := ⟨v, Finset.mem_filter.mpr ⟨hv, rfl⟩⟩
  obtain ⟨hi, he⟩ := Finset.mem_filter.mp (peaks.min'_mem hn)
  exact ⟨peaks.min' hn, hi, fun j hj ↦ (hmax j hj).trans_eq he.symm, fun j hj h ↦
    peaks.min'_le _ (Finset.mem_filter.mpr ⟨hj, le_antisymm (hmax j hj) (he.symm.trans_le h)⟩)⟩

/-- Choose up to `k` largest section weights. A missing center has weight
zero. The threshold bounds the unselected weights from above and the
selected weights from below, also when there are fewer than `k` centers.
Earlier stages of at least the same weight precede each chosen stage. -/
theorem exists_largest_section_weights {ι : Type*} [LinearOrder ι] (m : ι → ℤ) (k : ℕ)
    (s : Finset ι) (u : ℤ) (hu : 0 ≤ u) (hm : ∀ j ∈ s, 0 ≤ m j ∧ m j ≤ u) :
    ∃ (top : Finset ι) (t : ℤ), top ⊆ s ∧ top.card = min k s.card ∧
      0 ≤ t ∧ t ≤ u ∧ (top.card : ℤ) * t = (k : ℤ) * t ∧
      (∀ i ∈ top, ∀ j ∈ s, j < i → m i ≤ m j → j ∈ top) ∧
      (∀ j ∈ top, t ≤ m j) ∧ (∀ j ∈ s, j ∉ top → m j ≤ t) := by
  classical
  induction k generalizing s u with
  | zero => exact ⟨∅, u, by simp, by simp, hu, le_rfl, by simp, by simp, by simp,
      fun j hj _ ↦ (hm j hj).2⟩
  | succ k ih =>
    obtain hs | hs := s.eq_empty_or_nonempty
    · subst s
      exact ⟨∅, 0, by simp, by simp, le_rfl, hu, by simp, by simp, by simp, by simp⟩
    obtain ⟨i, hi, hmax, hfirst⟩ := exists_first_max m s hs
    obtain ⟨top, t, hsub, hcard, ht, hti, hpad, hclosed, htop, hrest⟩ :=
      ih (s.erase i) (m i) (hm i hi).1 (fun j hj ↦
        ⟨(hm j (Finset.mem_of_mem_erase hj)).1, hmax j (Finset.mem_of_mem_erase hj)⟩)
    have hi' : i ∉ top := fun h ↦ Finset.notMem_erase i s (hsub h)
    have hsc := Finset.card_pos.mpr hs
    refine ⟨insert i top, t, Finset.insert_subset hi (hsub.trans (Finset.erase_subset _ _)),
      ?_, ht, hti.trans (hm i hi).2, ?_, ?_, ?_, ?_⟩
    · rw [Finset.card_insert_of_notMem hi', hcard, Finset.card_erase_of_mem hi]
      omega
    · rw [Finset.card_insert_of_notMem hi']
      push_cast
      linarith
    · intro v hv j hj hjv hweight
      rcases Finset.mem_insert.mp hv with rfl | hv
      · exact (hjv.not_ge (hfirst j hj hweight)).elim
      · by_cases hji : j = i
        · exact Finset.mem_insert.mpr (Or.inl hji)
        · exact Finset.mem_insert_of_mem (hclosed v hv j (Finset.mem_erase.mpr ⟨hji, hj⟩)
            hjv hweight)
    · simpa [Finset.forall_mem_insert] using And.intro hti htop
    · intro j hj h
      simp only [Finset.mem_insert, not_or] at h
      exact hrest j (Finset.mem_erase.mpr ⟨h.1, hj⟩) h.2

/-- The contribution of the positive section to the difference between
the first and second homaloidal sums. -/
private theorem section_deficit {ι : Type*} (s top : Finset ι) (m : ι → ℤ)
    {a b k t : ℤ} (hsub : top ⊆ s) (ht : 2 * t ≤ b)
    (hpad : (top.card : ℤ) * t = k * t) (hnef : k * b ≤ a)
    (hline : a - 1 ≤ ∑ j ∈ s, m j)
    (hm : ∀ j ∈ s, 0 ≤ m j ∧ m j ≤ b)
    (htop : ∀ j ∈ top, t ≤ m j) (hrest : ∀ j ∈ s, j ∉ top → m j ≤ t) :
    b * (k * b - 2 * (∑ j ∈ top, m j)) - (b - 2 * t) ≤ ∑ j ∈ s, m j * (b - 2 * m j) := by
  classical
  have bound (j) (hj : j ∈ s) :
      (b - 2 * t) * m j - (if j ∈ top then 2 * b * (m j - t) else 0) ≤ m j * (b - 2 * m j) := by
    by_cases hj' : j ∈ top
    · simp only [hj', ↓reduceIte]
      nlinarith [mul_nonneg (sub_nonneg.mpr (hm j hj).2) (sub_nonneg.mpr (htop j hj'))]
    · simp only [hj', ↓reduceIte, sub_zero]
      nlinarith [mul_nonneg (hm j hj).1 (sub_nonneg.mpr (hrest j hj hj'))]
  have total := Finset.sum_le_sum bound
  have hfilter : s.filter (· ∈ top) = top := by
    ext j
    simp only [Finset.mem_filter, and_iff_right_iff_imp]
    exact fun h ↦ hsub h
  rw [Finset.sum_sub_distrib, ← Finset.mul_sum, ← Finset.sum_filter, hfilter,
    ← Finset.mul_sum, Finset.sum_sub_distrib] at total
  simp only [Finset.sum_const, nsmul_eq_mul, hpad] at total
  nlinarith [mul_nonneg (sub_nonneg.mpr ht)
    (show 0 ≤ (∑ j ∈ s, m j) - (k * b - 1) by linarith)]

/-- For a pair resolved over the coordinate plane, the section has residual
line degree at most one. With this hypothesis the greedy block lowers the
primary Sarkisov degree, regardless of the new exceptional orders.
The set `high` records *all* initial orders above half of `b`. -/
theorem exists_preparation_with_degree_drop {ι : Type*} [Fintype ι] [LinearOrder ι]
    (s high : Finset ι) (m : ι → ℤ) (k : ℕ) {a b : ℤ}
    (hb : 0 < b) (hnef : (k : ℤ) * b ≤ a)
    (hpos : ∀ j, 0 ≤ m j) (hhigh : ∀ j ∈ high, b < 2 * m j ∧ m j ≤ b)
    (hlow : ∀ j ∉ high, 2 * m j ≤ b) (hdisj : Disjoint s high)
    (hnonempty : high.Nonempty) (hline : a - 1 ≤ ∑ j ∈ s, m j)
    (hsq : ∑ j, m j ^ 2 = 2 * a * b - (k : ℤ) * b ^ 2 - 1)
    (hsum : ∑ j, m j = 2 * a + (2 - (k : ℤ)) * b - 3) :
    ∃ top ⊆ s, top.card = min k s.card ∧
      (∀ i ∈ top, ∀ j ∈ s, j < i → m i ≤ m j → j ∈ top) ∧
      (∀ i ∈ top, ∀ j ∈ s, j ∉ top → m j ≤ m i) ∧
      2 * (a - (∑ j ∈ top, m j) - (∑ j ∈ high, m j)) < (2 - (high.card : ℤ)) * b := by
  classical
  have hslo (j) (hj : j ∈ s) := hlow j (Finset.disjoint_left.mp hdisj hj)
  obtain ⟨top, t, hsub, hcard, ht, htb, hpad, hclosed, htop, hrest⟩ :=
    exists_largest_section_weights m k s (b / 2) (by omega)
      (fun j hj ↦ ⟨hpos j, by have := hslo j hj; omega⟩)
  refine ⟨top, hsub, hcard, hclosed, fun i hi j hj h ↦ (hrest j hj h).trans (htop i hi), ?_⟩
  by_cases hone : b = 1
  · subst b
    have hz (j) (hj : j ∈ s) : m j = 0 := by have := hslo j hj; have := hpos j; omega
    have h1 (j) (hj : j ∈ high) : m j = 1 := by have := hhigh j hj; omega
    simp [Finset.sum_congr rfl hz] at hline
    rw [Finset.sum_eq_zero (fun j hj ↦ hz j (hsub hj)), Finset.sum_congr rfl h1]
    simp only [Finset.sum_const, nsmul_eq_mul, mul_one]
    have := Finset.card_pos.mpr hnonempty
    omega
  have hdef := section_deficit s top m hsub (by omega : 2 * t ≤ b) hpad hnef hline
    (fun j hj ↦ ⟨hpos j, by have := hslo j hj; omega⟩) htop hrest
  have point (j : ι) : 2 * m j ^ 2 ≤ b * m j +
      (if j ∈ high then 2 * b * m j - b ^ 2 else 0) -
      (if j ∈ s then m j * (b - 2 * m j) else 0) := by
    by_cases hh : j ∈ high
    · have hjs : j ∉ s := fun hj ↦ Finset.disjoint_left.mp hdisj hj hh
      simp only [hh, hjs, ↓reduceIte, sub_zero]
      obtain ⟨h₁, h₂⟩ := hhigh j hh
      nlinarith [mul_nonneg (sub_nonneg.mpr h₁.le) (sub_nonneg.mpr h₂)]
    · by_cases hj : j ∈ s
      · simp only [hh, hj, ↓reduceIte]; nlinarith only
      · simp only [hh, hj, ↓reduceIte, sub_zero, add_zero]
        nlinarith [mul_nonneg (hpos j) (sub_nonneg.mpr (hlow j hh))]
  have total := Finset.sum_le_sum (s := Finset.univ) (fun j _ ↦ point j)
  rw [← Finset.mul_sum, Finset.sum_sub_distrib, Finset.sum_add_distrib,
    ← Finset.mul_sum, hsq, hsum] at total
  simp only [← Finset.sum_filter, Finset.filter_mem_eq_inter, Finset.univ_inter,
    Finset.sum_sub_distrib, ← Finset.mul_sum, Finset.sum_const, nsmul_eq_mul] at total
  by_contra! h
  nlinarith only [total, hdef, ht, show 2 ≤ b by omega,
    mul_nonneg hb.le (sub_nonneg.mpr h)]

end QPainleve.Sarkisov
