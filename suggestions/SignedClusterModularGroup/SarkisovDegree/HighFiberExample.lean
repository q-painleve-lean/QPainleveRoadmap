/-
Copyright (c) 2026 The QPainleve contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: The QPainleve contributors
-/
module

public import Mathlib.Algebra.Field.Defs
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# Local equations of a high-fiber counterexample

[Specified toric factorization](https://github.com/q-painleve-lean/QPainleveRoadmap/blob/main/QPainleveRoadmap/SignedClusterModularGroup/README.md#51-指定された双有理写像の因数分解)
-/

public section

namespace QPainleve.Sarkisov

namespace HighFiberExample

variable {R : Type*} [CommRing R]

/-- The polynomials used in the plane map on the torus. -/
def B (x y : R) : R := (1 + x) ^ 2 + x * y ^ 2

/-- The factor left after canceling `1+x` from the third plane coordinate. -/
def C (x y : R) : R := (1 + x) ^ 3 + 2 * x * (1 + x) * y ^ 2 + x ^ 2 * y ^ 4

theorem cancel_plane_coordinate (x y : R) :
    (1 + x) * C x y = B x y ^ 2 + x ^ 3 * y ^ 4 := by
  unfold B C
  ring

/-- Homogeneous coordinates with common factors removed on the torus. -/
def plane (x y : R) : R × R × R :=
  (x * y * (B x y) ^ 2, x ^ 4 * y ^ 5, B x y * C x y)

/-- In the chart `x = u, y = 1/v`, the corner blowups replace `u` by `v*z` or
`v^2*z`. The arguments `l,j` keep track of the remaining powers of `v`. -/
private def chart (u v l j z : R) : R × R × R :=
  let b := (1 + u) ^ 2 * l + z
  let c := (1 + u) ^ 3 * l ^ 2 + 2 * z * (1 + u) * l + z ^ 2
  (z * v * b ^ 2, j * z ^ 4 * v, b * c)

/-- Plane net at the opposite corner of the quadric. -/
def quadricCorner (z v : R) := chart z v (v ^ 2) 1 z

/-- Strict transform after blowing up the opposite corner once. -/
def firstCorner (z v : R) := chart (v * z) v v v z

/-- Strict transform after the second corner blowup, on the ray `(2,-1)`. -/
def secondCorner (z v : R) := chart (v ^ 2 * z) v 1 (v ^ 2) z

/-- Scale three coordinates by their common exceptional factor. -/
def scale (t : R) (p : R × R × R) : R × R × R := (t * p.1, t * p.2.1, t * p.2.2)

theorem homogenize_at_infinity {K : Type*} [Field K] (x v : K) (hv : v ≠ 0) :
    quadricCorner x v = scale (v ^ 6) (plane x v⁻¹) := by
  unfold quadricCorner chart scale plane B C
  ext <;> dsimp <;> field_simp

theorem first_blowup (z v : R) :
    quadricCorner (v * z) v = scale (v ^ 3) (firstCorner z v) := by
  unfold quadricCorner firstCorner chart scale
  ext <;> dsimp <;> ring

theorem second_blowup (z v : R) :
    firstCorner (v * z) v = scale (v ^ 3) (secondCorner z v) := by
  unfold firstCorner secondCorner chart scale
  ext <;> dsimp <;> ring

/-- The nonzero initial forms make both displayed exceptional orders exact. -/
theorem exceptional_restrictions (z : R) :
    firstCorner z 0 = (0, 0, z ^ 3) ∧ secondCorner z 0 = (0, 0, (1 + z) ^ 3) := by
  unfold firstCorner secondCorner chart
  constructor <;> ext <;> dsimp <;> ring

/-- At the smooth point of the retained fiber, the second coordinate of the
strict transform restricts to the unit 1 on the exceptional curve. -/
theorem retained_fiber_blowup (t v : R) :
    let x := -1 + v * t
    let b := t ^ 2 + x
    let c := t ^ 3 + 2 * x * t + x ^ 2 * v
    plane x v = scale (v ^ 5) (x * b ^ 2, x ^ 4, b * c) := by
  unfold plane scale B C
  ext <;> dsimp <;> ring

/-- The two toric corner blowups reveal a further smooth center of order three
at coordinate `z = -1` on the ray `(2,-1)`. -/
theorem opposite_fiber_blowup (t v : R) :
    let z := -1 + v * t
    let b := t + 2 * v * z + v ^ 3 * z ^ 2
    let c := t ^ 2 + z * (3 + 2 * z) + 3 * v ^ 2 * z ^ 2 + v ^ 4 * z ^ 3
    secondCorner z v = scale (v ^ 3) (z * b ^ 2, z ^ 4, b * c) := by
  unfold secondCorner chart scale
  ext <;> dsimp <;> ring

/-- The first two binomial transformations give the displayed numerator
and denominator of the first plane character. -/
theorem plane_characters {K : Type*} [Field K] (x y : K)
    (hx : x ≠ 0) (hy : y ≠ 0) (hp : 1 + x ≠ 0) (hb : B x y ≠ 0) :
    let y₁ := x * y / (1 + x)
    let r := 1 + y₁ ^ 2 / x
    let u := y₁ ^ 4 / (x * r ^ 2)
    u = x ^ 3 * y ^ 4 / (B x y) ^ 2 ∧ (1 + u) * r / y₁ = C x y / (x * y * B x y) := by
  dsimp only
  have hr : 1 + (x * y / (1 + x)) ^ 2 / x = B x y / (1 + x) ^ 2 := by
    unfold B
    field_simp
  rw [hr]
  constructor
  · field_simp
  · field_simp
    exact (cancel_plane_coordinate x y).symm

/-- The last mutation preserves the monomial of exponent `(-1,4)`.
Together with the preceding character identity this identifies the exact
three-mutation word in both coordinates on its common domain. -/
theorem terminal_frame {K : Type*} [Field K] (x y r : K)
    (hx : x ≠ 0) (hy : y ≠ 0) (hr : r ≠ 0)
    (hs : 1 + (y / r) ^ 4 / (x / r ^ 2) ≠ 0) :
    let u := (y / r) ^ 4 / (x / r ^ 2)
    let x₃ := (x / r ^ 2) / (1 + u) ^ 4
    let y₃ := (y / r) / (1 + u)
    y₃ ^ 4 / x₃ = y ^ 4 / (x * r ^ 2) ∧ y₃⁻¹ = (1 + y ^ 4 / (x * r ^ 2)) * r / y := by
  have hu : (y / r) ^ 4 / (x / r ^ 2) = y ^ 4 / (x * r ^ 2) := by field_simp
  dsimp only
  rw [hu] at hs ⊢
  constructor <;> field_simp
  field_simp at hs
  apply div_self
  intro h
  apply hs
  simp_all [mul_comm]

/-- The complete three mutations followed by the lattice frame induce the
two affine coordinates of the specified plane map on their common dense torus open. -/
theorem mutation_word_eq_plane {K : Type*} [Field K] (x y : K)
    (hx : x ≠ 0) (hy : y ≠ 0) (hp : 1 + x ≠ 0) (hb : B x y ≠ 0) (hc : C x y ≠ 0) :
    let y₁ := x * y / (1 + x)
    let r := 1 + y₁ ^ 2 / x
    let x₂ := x / r ^ 2
    let y₂ := y₁ / r
    let u := y₂ ^ 4 / x₂
    let x₃ := x₂ / (1 + u) ^ 4
    let y₃ := y₂ / (1 + u)
    (y₃ ^ 4 / x₃, y₃⁻¹) =
      ((plane x y).2.1 / (plane x y).1, (plane x y).2.2 / (plane x y).1) := by
  let y₁ := x * y / (1 + x)
  let r := 1 + y₁ ^ 2 / x
  have hy₁ : y₁ ≠ 0 := div_ne_zero (mul_ne_zero hx hy) hp
  have hr' : r = B x y / (1 + x) ^ 2 := by unfold r y₁ B; field_simp
  have hr : r ≠ 0 := hr' ▸ div_ne_zero hb (pow_ne_zero _ hp)
  obtain ⟨hu, hw⟩ := plane_characters x y hx hy hp hb
  change y₁ ^ 4 / (x * r ^ 2) = _ at hu
  change (1 + y₁ ^ 4 / (x * r ^ 2)) * r / y₁ = _ at hw
  have hlast : 1 + (y₁ / r) ^ 4 / (x / r ^ 2) ≠ 0 := by
    have he : (y₁ / r) ^ 4 / (x / r ^ 2) = y₁ ^ 4 / (x * r ^ 2) := by field_simp
    rw [he]
    intro h
    rw [h, zero_mul, zero_div] at hw
    exact div_ne_zero hc (mul_ne_zero (mul_ne_zero hx hy) hb) hw.symm
  obtain ⟨h₁, h₂⟩ := terminal_frame x y₁ r hx hy₁ hr hlast
  apply Prod.ext
  · exact h₁.trans (hu.trans (by unfold plane; dsimp; field_simp))
  · exact h₂.trans (hw.trans (by unfold plane; dsimp; field_simp))

/- The coefficients of B and C as expanded over ℤ are positive. Minkowski
sums give the exponent lists of the products, with repetitions permitted.
The constant term of B*C permits starting the minimum at zero. -/
private def exponents : List (ℤ × ℤ) :=
  let b : List (ℤ × ℤ) := [(0, 0), (1, 0), (2, 0), (1, 2)]
  let c : List (ℤ × ℤ) := [(0, 0), (1, 0), (2, 0), (3, 0), (1, 2), (2, 2), (2, 4)]
  [(4, 5)] ++ b.flatMap (fun p ↦ b.map (fun q ↦ (1 + p.1 + q.1, 1 + p.2 + q.2))) ++
    b.flatMap (fun p ↦ c.map (fun q ↦ (p.1 + q.1, p.2 + q.2)))

/-- Minimum weight among the three sections of the plane net. -/
def supportValue (w : ℤ × ℤ) : ℤ :=
  exponents.foldl (fun v p ↦ min v (p.1 * w.1 + p.2 * w.2)) 0

/-- Difference of support values on the new ray of a regular star subdivision. -/
def atCorner (u v : ℤ × ℤ) : ℤ :=
  supportValue (u.1 + v.1, u.2 + v.2) - supportValue u - supportValue v

set_option maxRecDepth 10000 in
/-- Corner orders on the Hirzebruch fan, then on its chain of subdivisions
next to the positive section. The last nonzero orders exhaust the square
sum together with the two smooth centers. -/
theorem hirzebruch_corner_orders :
    [atCorner (1, 0) (0, 1), atCorner (0, 1) (-1, 0), atCorner (2, -1) (1, 0)] = [0, 0, 0] ∧
    ([2, 1, 0, -1, -2, -3] : List ℤ).map (fun j ↦ atCorner (-1, 0) (j, -1)) = [2, 2, 2, 1, 1, 1] ∧
    atCorner (-1, 0) (-1, 1) = 0 ∧
    supportValue (1, 0) + supportValue (-1, 0) = -5 ∧
    supportValue (0, 1) + supportValue (2, -1) = 0 := by decide

end HighFiberExample

end QPainleve.Sarkisov
