# §5.1 の実装を正切断による減少へ移す手順

対象は QPainleve の `9ff63f2`。この版の `HasPlaneTargetMarking` は二つの指定射、始域の塔、塔の頂点の同型を保持し、例外座標の和を副次数に使う。移行の単位は、この標識から一つの減少経路を返す定理である。数学的な仕様と証明は [§5.1](README.md#51-指定された双有理写像の因数分解) と [正切断による分解](PositiveSectionDescent.md) にある。[基準コミット](https://github.com/q-painleve-lean/QPainleve/commit/9ff63f2fc06f23b8af17237475ea904496fd1302)

## 1. 標識の副次数を交点数で読む

`HasPlaneTargetMarking.plane` と `.hirzebruch` の Picard 座標を使い、`L` を基底側の類、`mⱼ` を例外座標の符号を変えたものとする。`M=(−K_X)·L−3` を整数で計算し、`K_Z·H=−3` から `M=Σmⱼ` を証明する。平面の標識は各項を `toNat` してから足し、線織面の標識は和を `toNat` している。各 `mⱼ≥0` で両方を `M.toNat` に書き換える補題を置けば、標識のコンストラクタを使っている呼び出し側から順に移せる。

基本変換では新旧の `(k,a,b)` を `2a+(2−k)b−3` に代入して `M′−M=b−2u` を得る。高い切断中心のときに限ってこの差が負であることを要求する。ここで全例外列の並べ替えを求める呼び出しを、両端の交点公式に切り替える。[標識](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/SignedClusterModularGroup/SarkisovDegree/Induction/Marking.lean) · [基本変換の係数公式](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/SignedClusterModularGroup/SarkisovDegree/ElementaryTransform.lean)

## 2. 指定射から正切断の位数を取り出す

塔の各段で中心がその段の正切断の固有変換に乗るかを記録する。各 blowup でその係数が −1 または 0 になることを示し、入射集合 `J` を得る。固定した標的射で三本の座標直線を引き戻し、その ideal の積が始域の被約極境界と分岐 ideal の積になることを示す。参考 Lean の `section_order_sum_of_triangle` にこの等式・固有変換の類・`H²=1` と nef 性を渡すと、`a−1≤Σ_J mⱼ≤a` が得られる。

高い切断中心を処理した後の分岐で、元の開ファイバー上の高い点を標識する。有限整数列の補題に `J` の正位数部分・元の高い添字集合・塔の順序を渡す。出力は祖先を優先する上位集合、その和 `W`、および `2(a−W−ΣMᵢ)<(2−r)b` である。[切断次数の参考 Lean](../../suggestions/SignedClusterModularGroup/SarkisovDegree/SectionDegree.lean) · [選択と減少不等式の参考 Lean](../../suggestions/SignedClusterModularGroup/SarkisovDegree/HighFiber.lean)

## 3. 一つの基本変換で標識を運び、指数について反復する

`exists_marked_quadric_preparation_of_hirzebruch` を呼ぶ箇所に、正切断の最大位数を選ぶ準備を接続する。まず一段の出力として、共通始域上の次の正則射、正切断上に残る中心の局所同型、各標識の移送先をまとめる。同じファイバーの標識には逆中心を指定し、位数が `b−u≥μ` となることを示す。他のファイバーの標識には局所同型を使う。

この一段を `k` 回合成する。正の pivot は塔の先頭へ移せる実中心、零を補う pivot は正切断上の節点とする。細分を追加したら既成の経路と標的射にも同じ細分を前合成する。出口で必要なデータは `a₀=a−W`、一つまたは二つの proper な標識、その位数 `μᵢ≥Mᵢ`、異なる元のファイバーの識別である。準備後の高い添字の全体を列挙する呼び出しはこの入口から外せる。[二次曲面への準備](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/SignedClusterModularGroup/SarkisovDegree/Induction/QuadricPreparation.lean) · [準備後の分岐](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/SignedClusterModularGroup/SarkisovDegree/Induction/PreparedQuadric.lean)

## 4. 出口のリンク構成を中心の位置だけで使える形にする

一中心では共通 blowup 上の平面直線類 `A+B−E₁` と平面への経路を返す。二中心では、交換後の異なるファイバー上の反対切断にある二点から `A+B−E₁−E₂` と二次曲面への経路を返す。二点の位数和が `a₀` より大きいことから、交換後のファイバーの相異性が従う。角に移る標識は高々一つなので、滑らかな二点の場合と角・滑らかな点の場合を用意する。

特に `exists_sarkisov_path_decrease_of_quadric_corner_and_smooth_centers` の依存先から、実際の経路と次数の**等式**を作る部分を取り出す。減少の**不等式**は手順 2 と 3 を使って別に与える。これで「ほかの中心は全て低い」という前提を新経路の呼び出し側へ持ち込まずに済む。各出口は `HasPlaneTargetDecrease` として返す。これにより `exists_sarkisov_path_primary_decrease_or_infinitely_near_high_corner` の選言を残していた箇所で、指定標的への減少を直接得る。[角と滑らかな中心の経路](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/SignedClusterModularGroup/SarkisovDegree/MixedQuadric/Path.lean) · [減少のインターフェース](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/SignedClusterModularGroup/SarkisovDegree/Induction/Step.lean)

## 5. 指定二射の定理で移行を完了する

平面・高い切断中心・高い点のない線織面・高いファイバー中心の各分岐を同じ辞書式帰納へ渡す。次数 1 の平面同型には座標置換と平行移動を含める。標的のトーリック準備を逆に戻し、`HasResolvedSarkisovFactorization.exists_path_of_comp_eq` を通して、任意の指定二射について単一の節点細分上で全部分合成が正則となり、合成が `p′p⁻¹` に等しくなることまで確認する。[整礎帰納](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/Geometry/Toric/Fan/Logarithmic/Induction.lean) · [平面への帰着](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/Geometry/Toric/Fan/Logarithmic/SarkisovReduction.lean) · [指定写像への等式](https://github.com/q-painleve-lean/QPainleve/blob/9ff63f2fc06f23b8af17237475ea904496fd1302/QPainleve/Geometry/Toric/Fan/Logarithmic/Factorization.lean)

移行時の回帰例には F₂ の `(a,b)=(10,5)` を使える。切断上の `2,2` を選ぶと準備後の高い位数は `5,3,3,3`、二標識での出口は `b′=3` である。これは他の高い近接中心を許す出口のテストになる。単一標識、`k=0`、零位数の節点の補充、同じ鎖で最大位数が並ぶ場合も確認する。[例の局所式の参考 Lean](../../suggestions/SignedClusterModularGroup/SarkisovDegree/HighFiberExample.lean)

参考 Lean は上記補題と例の移植用であり、ロードマップの Lake ターゲットの外に置く。幾何のファイルは QPainleve の曲面交点 API を import する。§5.1 全体の完成条件は、この節の指定二射に対する定理である。
