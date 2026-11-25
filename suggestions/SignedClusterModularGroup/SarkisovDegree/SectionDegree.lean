/-
Copyright (c) 2026 The QPainleve contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: The QPainleve contributors
-/
module

public import QPainleve.AlgebraicGeometry.Chow.Nef.Basic
public import QPainleve.AlgebraicGeometry.Blowup.Tower.Intersection
import QPainleve.AlgebraicGeometry.CartierDivisor.Support

/-!
# Residual degree of a polar section

For a specified map to the plane, a polar component lies in the pullback of
a coordinate line. Its intersection with the nef line class is zero or one.
In a source blowup marking this intersection is the original section degree
minus the sum of the orders on successive strict transforms.

[Specified toric factorization](https://github.com/q-painleve-lean/QPainleveRoadmap/blob/main/QPainleveRoadmap/SignedClusterModularGroup/README.md#51-指定された双有理写像の因数分解)
-/

public section

open AlgebraicGeometry CategoryTheory TopologicalSpace
open TauCeti TauCeti.AlgebraicGeometry
open scoped BigOperators

namespace QPainleve.Sarkisov

universe u

/-- Every prime component of an effective representative of a nef class of
square one has degree zero or one, including components with multiplicity. -/
theorem prime_degree_of_square_one {k : Type u} [Field k] [Infinite k]
    {X : Scheme.{u}} [X.Over (Spec (.of k))] [X.IsProjectiveOver k]
    [IsIntegral X] [IsNoetherian X] [∀ x : X, UniqueFactorizationMonoid (X.presheaf.stalk x)]
    (hX : topologicalKrullDim X = 2) (H : LineBundleClass X)
    (hnef : LineBundleClass.IsNef k (X ↘ Spec (.of k)) H)
    (hsq : Chow.classIntersectionNumber k X H H = 1)
    {I : X.IdealSheafData} (hI : I.IsEffectiveCartier)
    (hclass : (LineBundleClass.mk hI.toInvertibleSheaf)⁻¹ = H)
    (p : CodimensionOnePoint X) (hp : (p : X) ∈ I.support) :
    Chow.classIntersectionNumber k X H (LineBundleClass.primeDivisorClass p) = 0 ∨
    Chow.classIntersectionNumber k X H (LineBundleClass.primeDivisorClass p) = 1 := by
  classical
  let : IsNormalScheme X := IsNormalScheme.of_uniqueFactorizationMonoid_stalk
  let D := hI.toCartierDivisor.toWeilDivisor
  have hD : 0 ≤ D := (Scheme.CartierDivisor.isEffective_iff_toWeilDivisor_nonneg _).mp
    hI.isEffective_toCartierDivisor
  have hDp : D p ≠ 0 := fun hz ↦ (hI.coeff_toWeilDivisor_eq_zero_iff p).mp hz hp
  have hc := congrArg Additive.toMul
    (Scheme.CartierDivisor.weilToLineBundleClassHom_toWeilDivisor hI.toCartierDivisor)
  change (Scheme.CartierDivisor.weilToLineBundleClassHom X D).toMul = _ at hc
  rw [toMul_ofMul, hI.toLineBundleClass_toCartierDivisor, hclass] at hc
  let d := fun q ↦ Chow.classIntersectionNumber k X H (LineBundleClass.primeDivisorClass q)
  have hd : ∀ q, 0 ≤ d q := (Chow.isNef_iff_classIntersectionNumber_nonneg k hX H).mp hnef
  have hsum : ∑ q ∈ D.support, D q * d q = 1 := by
    calc
      _ = Chow.classIntersectionNumber k X H
          (Scheme.CartierDivisor.weilToLineBundleClassHom X D).toMul :=
        (Chow.classIntersectionNumber_weilToLineBundleClassHom k hX H D).symm
      _ = 1 := by rwa [hc]
  have hsingle := Finset.single_le_sum (s := D.support)
    (f := fun q ↦ D q * d q) (fun q _ ↦ mul_nonneg (hD q) (hd q))
    (Finsupp.mem_support_iff.mpr hDp)
  have hweight : 1 ≤ D p := by
    have hge : 0 ≤ D p := hD p
    omega
  have hle : d p ≤ D p * d p := by
    simpa only [one_mul] using mul_le_mul_of_nonneg_right hweight (hd p)
  change d p = 0 ∨ d p = 1
  have := hd p
  omega

/-- The logarithmic pole identity implies that a prime of the source boundary is
supported on one of the three coordinate-line pullbacks. -/
theorem boundary_degree_of_triangle {k : Type u} [Field k] [Infinite k]
    {X : Scheme.{u}} [X.Over (Spec (.of k))] [X.IsProjectiveOver k]
    [IsIntegral X] [IsNoetherian X] [∀ x : X, UniqueFactorizationMonoid (X.presheaf.stalk x)]
    (hX : topologicalKrullDim X = 2) (H : LineBundleClass X)
    (hnef : LineBundleClass.IsNef k (X ↘ Spec (.of k)) H)
    (hsq : Chow.classIntersectionNumber k X H H = 1)
    (I : Fin 3 → X.IdealSheafData) (hI : ∀ j, (I j).IsEffectiveCartier)
    (hclass : ∀ j, (LineBundleClass.mk (hI j).toInvertibleSheaf)⁻¹ = H)
    (D R : X.IdealSheafData) (hpole : I 0 * I 1 * I 2 = D * R)
    (p : CodimensionOnePoint X) (hp : (p : X) ∈ D.support) :
    Chow.classIntersectionNumber k X H (LineBundleClass.primeDivisorClass p) = 0 ∨
    Chow.classIntersectionNumber k X H (LineBundleClass.primeDivisorClass p) = 1 := by
  have h : (p : X) ∈ (I 0 * I 1 * I 2).support := by
    rw [hpole, Scheme.IdealSheafData.support_mul]
    exact Or.inl hp
  rw [Scheme.IdealSheafData.support_mul, Scheme.IdealSheafData.support_mul] at h
  rcases h with (hp₀ | hp₁) | hp₂
  · exact prime_degree_of_square_one hX H hnef hsq (hI 0) (hclass 0) p hp₀
  · exact prime_degree_of_square_one hX H hnef hsq (hI 1) (hclass 1) p hp₁
  · exact prime_degree_of_square_one hX H hnef hsq (hI 2) (hclass 2) p hp₂

/-- Compute the residual degree in the source marking from the incidence
set of a smooth strict transform. The exceptional coordinates of both
classes are in the total-transform basis. -/
theorem section_degree_in_blowup_marking {k : Type u} [Field k] [IsAlgClosed k]
    {X Y : Scheme.{u}} [X.Over (Spec (.of k))]
    [SmoothOfRelativeDimension 2 (X ↘ Spec (.of k))] [IsIntegral X] [X.IsProjectiveOver k]
    {n : ℕ} (T : BlowupTower X n Y) (hT : BlowupTower.IsClosedPointTower X T)
    (L S : Additive (LineBundleClass X)) (m : Fin n → ℤ) (s : Finset (Fin n)) :
    let : IsNoetherian X := isNoetherian_of_finiteType (X ↘ Spec (.of k))
    letI : Y.Over (Spec (.of k)) := ⟨T.toBase ≫ (X ↘ Spec (.of k))⟩
    let e := T.picardMarking hT (X ↘ Spec (.of k))
    Chow.classIntersectionNumber k Y (e (L, fun j ↦ -m j)).toMul
      (e (S, fun j ↦ if j ∈ s then -1 else 0)).toMul =
      Chow.classIntersectionNumber k X L.toMul S.toMul - ∑ j ∈ s, m j := by
  intro hNoeth e
  dsimp only [e]
  rw [BlowupTower.classIntersectionNumber_picardMarking k hT]
  simp [mul_ite]

/-- The two surface calculations give the interval for the sum on the source
section. Its strict transform is specified by its prime and its marked class.
The three coordinate-line ideals specify the target triangle. -/
theorem section_order_sum_of_triangle {k : Type u} [Field k] [IsAlgClosed k]
    {X Y : Scheme.{u}} [IsIntegral Y] [IsNoetherian Y]
    [∀ y : Y, UniqueFactorizationMonoid (Y.presheaf.stalk y)] [X.Over (Spec (.of k))]
    [SmoothOfRelativeDimension 2 (X ↘ Spec (.of k))] [IsIntegral X] [X.IsProjectiveOver k]
    {n : ℕ} (T : BlowupTower X n Y) (hT : BlowupTower.IsClosedPointTower X T)
    (L S : Additive (LineBundleClass X)) (m : Fin n → ℤ) (s : Finset (Fin n))
    (I : Fin 3 → Y.IdealSheafData) (hI : ∀ j, (I j).IsEffectiveCartier)
    (D R : Y.IdealSheafData) (hpole : I 0 * I 1 * I 2 = D * R) :
    let : IsNoetherian X := isNoetherian_of_finiteType (X ↘ Spec (.of k))
    letI : Y.Over (Spec (.of k)) := ⟨T.toBase ≫ (X ↘ Spec (.of k))⟩
    ∀ [Y.IsProjectiveOver k],
    let e := T.picardMarking hT (X ↘ Spec (.of k))
    let H := (e (L, fun j ↦ -m j)).toMul
    ∀ p : CodimensionOnePoint Y, (p : Y) ∈ D.support →
      (e (S, fun j ↦ if j ∈ s then -1 else 0)).toMul = LineBundleClass.primeDivisorClass p →
      LineBundleClass.IsNef k (Y ↘ Spec (.of k)) H → Chow.classIntersectionNumber k Y H H = 1 →
      (∀ j, (LineBundleClass.mk (hI j).toInvertibleSheaf)⁻¹ = H) →
      let a := Chow.classIntersectionNumber k X L.toMul S.toMul
      a - 1 ≤ ∑ j ∈ s, m j ∧ (∑ j ∈ s, m j) ≤ a := by
  intro hNoeth hproj
  let : Y.Over (Spec (.of k)) := ⟨T.toBase ≫ (X ↘ Spec (.of k))⟩
  let : SmoothOfRelativeDimension 2 (T.toBase ≫ (X ↘ Spec (.of k))) :=
    hT.smoothOfRelativeDimension (X ↘ Spec (.of k))
  dsimp only
  intro p hp hsection hnef hsq hclass
  have hdim := topologicalKrullDim_eq_of_smoothOfRelativeDimension
    (T.toBase ≫ (X ↘ Spec (.of k))) (n := 2)
  have hdegree := boundary_degree_of_triangle hdim _ hnef hsq I hI hclass D R hpole p hp
  have hmark := section_degree_in_blowup_marking T hT L S m s (k := k)
  dsimp only at hmark
  rw [hsection] at hmark
  omega

end QPainleve.Sarkisov
