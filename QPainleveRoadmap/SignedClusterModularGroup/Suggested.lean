module

public import Mathlib

/-!
# 反標準サイクルのクラスターモジュラー群: target signatures

ロードマップの定義・目標・証明経路は README.md に記す。
このファイルはその代用ではなく、既存の数学的対象で述べられる主要定理を記す。

ここでは整数双線形形式、有限自由加群、その等長同型を用いて、
境界サイクルの向きを反転する対合の存在を述べる。
単模性は交点形式による双対加群への写像の全単射性、
δ の原始性は δ を 1 に移す整数線形形式の存在で表す。
有限自由加群では後者は ℤδ が原始部分加群であることと同値である。

符号付きクラスター・モジュラー群と Picard 等長変換群の反同型、
語の関係式の完全判定、Cremona 等長変換群との比較については、
標識付き反標準対とそのトーリック表示、X 有理写像で割った語の群、
および幾何学的引き戻しを表す対象の構成が必要である。
向きを保つ群の同定、符号拡大の分裂、小さい境界の中心的対合、
四頂点と十一頂点の具体語に関する生成・中心の定理も、同じ対象の構成を要する。
これらの構成と比較は README.md の各レイヤーの目標であり、
任意の型や未指定の命題を仮定した代替の定理は置かない。
-/

open scoped BigOperators

public section

namespace QPainleveRoadmap.SignedClusterModularGroup

/-! ## Layer 1: サイクル格子と鏡映 -/

/--
単模な対称整数格子に、アフィン A 型の交点行列を持つサイクル D があるとする。
その総和 δ が原始的かつ characteristic なら、ある成分 D j₀ とだけ交点 1 を持ち、
平方 −1 の類 f が存在する。さらに f と δ を固定し、D i を D (2j₀−i) に移す
対合的等長変換 g が存在する。境界全体と直交する κ に対する作用は
g κ = −κ + 2(κ·f)δ である。

交点公式の二つの隣接項は個別に数える。従って n=1 では D₀²=0、
n=2 では D₀·D₁=2 となる。f は格子の元であり、曲線や切断の存在を仮定しない。
-/
theorem exists_cycle_reversing_involution
    (L : Type*) [AddCommGroup L] [Module ℤ L]
    [Module.Free ℤ L] [Module.Finite ℤ L]
    (B : LinearMap.BilinForm ℤ L)
    (hSymm : B.IsSymm)
    (hUnimodular : Function.Bijective (B : L → (L →ₗ[ℤ] ℤ)))
    (n : ℕ) [NeZero n]
    (D : ZMod n → L)
    (hIntersection : ∀ i j : ZMod n,
      B (D i) (D j) =
        (-2 : ℤ) * (if i = j then 1 else 0) +
          (if j = i + 1 then 1 else 0) +
          (if j = i - 1 then 1 else 0))
    (hPrimitive : ∃ ℓ : L →ₗ[ℤ] ℤ, ℓ (∑ i : ZMod n, D i) = 1)
    (hCharacteristic : ∀ x : L,
      Even (B x x - B x (∑ i : ZMod n, D i))) :
    ∃ (j₀ : ZMod n) (f : L) (g : B.IsometryEquiv B),
      B f f = -1 ∧
      (∀ j : ZMod n, B f (D j) = if j = j₀ then 1 else 0) ∧
      Function.Involutive g ∧
      g f = f ∧
      g (∑ i : ZMod n, D i) = (∑ i : ZMod n, D i) ∧
      (∀ j : ZMod n, g (D j) = D (2 * j₀ - j)) ∧
      (∀ κ : L, (∀ j : ZMod n, B κ (D j) = 0) →
        g κ = -κ + (2 * B κ f) • (∑ i : ZMod n, D i)) := by
  sorry

end QPainleveRoadmap.SignedClusterModularGroup
