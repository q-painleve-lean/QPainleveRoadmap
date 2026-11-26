# Roadmap: 反標準サイクルに付随する符号付きクラスター・モジュラー群

**Summary.** クラスター変異とラベルの置換から得られる有理写像について、どの変換が同じ群の元を表し、群全体をどの幾何的対称性で記述できるかを決定する。対象は、複素射影有理曲面上の向き付き反標準節点サイクルで、その全境界類が原始的、nef、平方零となる対のトーリック表示から得られる種である。独立な X 座標上の有理写像の等号で語を同一視し、交換行列と全座標を同時に反転する操作を加える。

主定理は、この群が、境界成分の類を回転または鏡映で置換する Picard 格子の等長変換に向きの符号を添えた群と反同型であることを述べる。向きを保つ部分群は指数 2 であり、この拡大は分裂する。境界成分が 1 個または 2 個の場合にも符号を保持し、Picard 作用が恒等である非自明な中心的対合を捉える。

語の関係式は、向きの符号、電荷核上の整数線形作用、一つの境界成分の行き先によって完全に決まる。境界と交わらない自己交点 −2 の曲線を持たない曲面では、格子側の群を Cremona 等長変換の群と比較する。この決定は固定した曲面の自己同型群の決定とは区別する。

ClusterAlgebras の変異の形式、IntegralLattices の整数格子、代数的トーリック幾何と有理曲面の交点理論に接続する。必要な定義と基本定理を、それぞれ自然な仮定の下で再利用できる形に整備し、有限階数の格子計算、点 blowup とトーリック表示、周期からの再構成、語と格子作用の対応、符号付き群の決定の順に進む。

## Conventions

幾何部分の基礎体は ℂ とする。曲面は ℂ 上の滑らかな連結射影スキームで、相対次元は 2 とする。有理性は ℙ² との双有理性という追加条件である。因子、線束、交点、blowup はこのスキーム上で定義し、有理性や境界に関する条件は、それを使う定理にだけ課す。Layer 0 の群環と X 有理写像は任意の体上で構成し、幾何への適用で ℂ を取る。Layer 1 の整数格子は曲面と独立に扱う。

Looijenga 対 (Y,D) は、滑らかな射影有理曲面と被約反標準有理節点サイクルの対である。D の成分数は n≥1 とし、向きは正規化上の成分と枝の巡回順を含む。n=1 では既約結節曲線の二枝の順序、n=2 では二成分の間の二節点を区別する。成分番号は ℤ/nℤ で読む。**対象対**とは、さらに δ=[D] が Pic(Y) の原始元、nef、δ²=0 を満たす Looijenga 対をいう。主定理の入力は対象対であり、一般の Looijenga 対やその節点 blowup にこの追加条件を課さない。

トーリック表示 P は、節点での有限回の blowup による (Ŷ,D̂)→(Y,D) と、滑らかな完備トーリック対への内部 blowup の有限列 (Ŷ,D̂)→(Ȳ,D̄)、およびトーラスの枠を記録する。内部中心にはラベルと同一境界成分上の順序を付ける。中心は境界の滑らかな部分に置き、相異なる中心を交換するときにその非衝突条件を課す。同じ点を繰り返し吹く場合は、その順序を保持する。この定義は対象対の追加条件から独立している。「最小対」は節点補助模型から戻る対象対を指し、(−1) 曲線を持たない最小有理曲面という意味ではない。

向き付き格子 N は階数 2、det はその整数値行列式である。内部中心の有限ラベル集合は I、A=ℤᴵ、電荷は v:A→N、v(eᵢ)=vᵢ とし、各 vᵢ は N の原始元である。H=im(v)、K=ker(v)、εᵢⱼ=det(vᵢ,vⱼ) と書く。L=Pic(Y)、M=Σℤ[Dⱼ] とする。M の原始性や rank H=2 は一般の表示の定義に含めない。M⊥ と K の同一視、対象対での rank H=2 はそれぞれ定理として構成する。

有限階数の自由整数加群 B に対し、指標トーラスのスキームを 𝕋(B)=Spec ℂ[B]、その複素点を T(B)=Hom(B,ℂ×)、関数体を ℂ(B)=Frac(ℂ[B]) と書く。開集合・有理写像・支配性は 𝕋(B) 上で述べ、中心 c の選択には T(B) を使う。T(A) 上の Xᵢ は独立変数である。中心 c∈T(A) と曲面のトーラス座標 z∈T(N) から得る Xᵢ=cᵢzᵛⁱ は曲面上の有理関数であり、独立変数を固定中心へ代入する操作とは区別する。指標の規約は ordᵤ(zʰ)=det(h,u)、中心の方程式は 1+cᵢzᵛⁱ=0 とする。

固定した c への代入は、一般には関数体 ℂ(A)→ℂ(N) の準同型を与えない。非零の Casimir 多項式が代入後に零となり得るためである。X 写像との評価の等式は共通の有理定義域で、または中心を変数に残した ℂ(A⊕N) 内で述べる。

語は、交換行列を始域・終域とする変異、ラベル置換、反転の有限列である。[a]₊ = max(a,0) とする。

    μₖ: ε′ᵢⱼ = −εᵢⱼ                         (k ∈ {i,j}),
        ε′ᵢⱼ = εᵢⱼ + [εᵢₖ]₊εₖⱼ + εᵢₖ[−εₖⱼ]₊  (それ以外),
        X′ₖ = Xₖ⁻¹,
        X′ᵢ = Xᵢ Xₖ^[εᵢₖ]₊ (1+Xₖ)^(−εᵢₖ)    (i ≠ k).
    σ:  ε′ᵢⱼ = ε_{σ(i),σ(j)},  X′ᵢ = X_{σ(i)}.
    ς:  ε′ = −ε,  X′ᵢ = Xᵢ⁻¹.

始域と終域の行列が同じ語をループとする。Γ̃ はその X 有理写像の群で、積は点の写像の合成である。Γ は反転を含まないループの像である。語の偶奇は、まず語に対して定義し、Γ̃ 上への降下は定理として証明する。A 座標にも恒等に作用することを同一視の条件に加えない。

語 w の後に w′ を実行すると、点写像は `F_{w′}` ∘ F_w、関数体の引き戻しは F_w* ∘ `F_{w′}*` になる。関数体の代数自己同型を Lean の実体にする場合、Γ̃ はその像の反対群を取る。Picard 作用の主定理は、点写像の規約では Γ̃ᵒᵖ ≅ Ĝ と述べる。

    G⁺ = {g ∈ O(L) | ∃k ∈ ℤ/nℤ, ∀j, g[Dⱼ] = [D_{j+k}]}.
    Ĝ  = {(g,η) ∈ O(L)×{±1} |
           ∃k ∈ ℤ/nℤ, ∀j, g[Dⱼ] = [D_{ηj+k}]}.

Ĝ の積は成分ごとの積である。格子の等長変換 g と境界の順像を区別し、g は曲面同型の引き戻しを表す。境界と交わらない自己交点 −2 の既約曲線を内部 (−2) 曲線と呼ぶ。

## Layer 0: 語と独立変数上の有理写像

### 0.1 指標トーラスと関数体

体 k と有限自由整数加群 B に対し、群環 k[B] は既存の `AddMonoidAlgebra k B`、分数体 k(B) は `FractionRing` を用いる。スキーム 𝕋_k(B)=Spec k[B] とその群構造は、`MonoidAlgebra k (Multiplicative B)` との標準同型を通して `TauCeti.DiagonalizableGroup.groupScheme` から得る。k 点 Hom(B,k×) との同型と格子準同型に沿う反変性には `schemePointsMulEquiv` と `schemePointsMulEquiv_groupSchemeMap` を使う。指数 b の単項式を Xᵇ とする。

B=I→₀ℤ の座標環は `TauCeti.LaurentRing k I` である。既存の `unitX`、`aeval`、`aevalEquiv`、`algHom_ext`、`renameEquiv` を用い、`MvPolynomial.toLaurent` の単射と `LaurentRing.isLocalization` で多項式環からの局所化を扱う。一般の B は整数基底の `repr` でこの表示へ移し、基底変更との整合性を公開する。単項式の線形独立性には群環の基底、整域性には有限自由指数群の既存インスタンスを適用する。

新規の比較定理として、格子準同型 f:B→C の既存トーラス射の引き戻しが Xᵇ↦Xᶠ⁽ᵇ⁾ となることを、加法・乗法の群環表示と分数体にわたって統一する。恒等・合成は既存の `groupSchemeMap` の函手性を移す。格子単射から群環と関数体の単射、格子同型からトーラスと関数体の同型を得る。`algHom_ext` と局所化の ext を合わせ、k(B) の自己同型が基底単項式への作用で決まることを証明する。

k(B) と 𝕋_k(B) の scheme functionField の同型には、Mathlib の `Scheme.functionField_isFractionRing_of_affine` と分数体の普遍性を使う。スキームの有理写像は既存の `Scheme.RationalMap` で持ち、`RationalMap.equivFunctionFieldOver` により Spec k(B) からの基底上の射と比較する。この同値は始域が integral、終域が基底上 locally of finite type という仮定で適用できる。新たに接続するのは、支配的な有理写像の関数体引き戻し、群環の生成元への作用、恒等・合成・逆との整合性である。有理写像の等号検出には `RationalMap.eq_of_fromFunctionField_eq`、正則な代表の引き戻しには既存 `Scheme.Hom.functionFieldMap` とその合成公式を使う。特殊点での値の一致を有理写像の等号の定義にしない。[Mathlib の有理写像と関数体の比較](https://github.com/leanprover-community/mathlib4/blob/31ce06eaadf4a200c0e1407c5f10953cf606b8f8/Mathlib/AlgebraicGeometry/Birational/RationalMap.lean)を使用する。

トーラスの k 上の自己同型と並進の比較も、有限自由格子 B に対して用意する。群環の単元分類は既存 `AddMonoidAlgebra.unitsEquiv` を使い、単元への作用から指数の整数線形同型と文字 B→k× を抽出する。必要な指数群の `TwoUniqueSums` は B の整数基底を通して供給する。文字に対応する座標環の同型は `MonoidAlgebra.charTwist`、スキーム上の並進は `TauCeti.leftTranslation` を用いる。単項式上の公式によって両者を比較し、恒等・合成・逆の公式を既存 API から移す。ここには曲面、境界、電荷像の全階数性を仮定しない。境界と順序付き中心を保つ条件への適用は 3.3 と 4.5 で行う。

*Needs:* Mathlib の有限自由加群、`AddMonoidAlgebra`、`FractionRing`、`AlgEquiv`、アフィンスキーム。Tau Ceti の `DiagonalizableGroup`、`SplitTorus`、`LaurentRing` と `Morphisms/Dominant.lean`。正確な供給範囲は [指標トーラスと変異の契約](#from-tau-ceti-指標トーラスと変異) に記す。

### 0.2 型付きの語とその解釈

交換行列は `TauCeti.ExchangeMatrix (Function.Embedding.refl I)` の symmetrizer が定数 1 である部分を用い、本書の歪対称行列 ε との辞書を B=−ε=εᵀ とする。native `YSeed.mutation` は係数 i の更新に Bₖᵢ を用いるため、Bₖᵢ=εᵢₖ により Conventions の X 公式と一致する。この規約比較を公開補題にする。歪対称性の保存、行列変異の対合性・reindex・符号反転との整合性は既存の `ExchangeMatrix.mutation`、`mutation_mutation`、`mutation_reindex` と `matrixMutation_neg` を適用する。

Conventions の変異・ラベル同定・反転を、それぞれの始域・終域と操作の種類を持つ quiver の辺として定める。有限語には Mathlib の `Quiver.Path`、連結には `Path.comp`、逆順には `Path.reverse` を用いる。辺の逆を与える際は変異後の行列、逆のラベル同定、符号を反転した種を端点に記録し、その X 写像が元の辺の逆であることを証明する。変異行列の対合性、ラベル同定の逆、符号の二重反転を用いて、辺の反転を `Quiver.HasInvolutiveReverse` として与える。体 k を固定し、各頂点をその関数体 `CommAlgCat.of k (FractionRing (AddMonoidAlgebra k A))` の opposite、辺 P→P′ を引き戻しの `AlgEquiv` k(A′)≃ₐ[k]k(A) が与える opposite の射へ送る prefunctor を定める。`CategoryTheory.Paths.lift` によりこれを `(CommAlgCat k)ᵒᵖ` への語の解釈へ延長する。これで語の実行順と引き戻しの逆順を同じ functor の合成則で管理する。変異だけの連続部分には既存 `ExchangeMatrix.mutationWord` と `YSeed.mutationWord` を用い、両解釈の一致と append・reverse・reindex の公式を公開する。ラベル同定 σ が終域の添字を始域へ送る規約では、native `reindex` に σ.symm を渡す。路の形式的な逆順と X 有理写像による語の同一視は区別し、後者は 0.3 の像部分群で扱う。

**減算なし有理式との比較。** `YSeed I (Qsf I)` の初期係数を `Qsf.X` とする。既存 `YSeed.mutation_coefficient_of_ne`、`mutation_mutation`、`map_mutation` と語の公式を用い、X 変異の有理式と有限語の代入を得る。`QsfZero.toFractionRing` とその単射性が、これらを `FractionRing (MvPolynomial I ℤ)` の通常の加法・乗法に結び付ける。係数 semifield の加法は ℂ× 上の通常の加法ではないため、ℂ× をそのまま `CoefficientSemifield` として使わない。

**任意体上の解釈。** R_k=`LaurentRing k I`、S_k=R_k[(1+Xₖ)⁻¹] と置く。変異公式の各座標は S_k の単元であり、`LaurentRing.aeval` で R′_k→S_k を得る。1+X′ₖ=(1+Xₖ)/Xₖ も単元なので、標的側の S′_k へ定義域を延長する。まず整数係数の S_ℤ を上の多項式分数体へ単射で入れ、native `YSeed.mutation_mutation` により二つの局所化環準同型の合成が恒等になることを示す。この整数係数の恒等式を S_ℤ→S_k で運び、任意体 k に対する相互逆の局所化環同型と分数体同型を得る。分母 Xₖ と 1+Xₖ の非零性は独立変数の群環表示から供給する。

全 `Qsf I` から k(I) への単射比較は `CharZero k` のもとで別定理とする。正標数では全 Qsf の評価を要求せず、前段の局所化同型を各辺について合成する。従って Layer 0 の関数体上の語は任意体で定義され、最終対象 ℂ ではさらに native Qsf の語との単射比較を使用できる。変異公式の出典は [FG] §1.2.2 (7)、§1.2.4 (13) である。

*Needs:* 0.1。既存 `Algebra/Cluster/ExchangeMatrix/{Mutation,Word}`、`YSeed/{Basic,Word}`、`CoefficientSemifield/Universal`。追加するのは規約の辞書、整数 Laurent 局所化と係数変更、混合した型付き語の解釈である。

### 0.3 有理写像の群と反転の交換

二度の同じ変異が恒等になることは 0.2 の native YSeed と局所化環の比較から得る。二度の反転が恒等になること、ςμₖ と μₖς、ςσ と σς がそれぞれ同じ始域・終域と同じ有理写像を持つことを証明する。反転は B↦−B と係数の逆数化として native 型上に追加し、行列部分には `matrixMutation_neg`、係数部分には `CoefficientSemifield.inv_add_inv` と正負部分の恒等式を使う。ここで μₖς の μₖ は始域 ε における変異、ςμₖ の μₖ は −ε における変異であり、行列を固定して交換すると読まない。

基点 ε でのループの関数体同型の像を部分群として構成し、その反対群を Γ̃ とする。反転のないループの像から Γ を構成する。これは X 有理写像の等号による語の商と同型である。native seed の他の変数や同値関係を商の条件に追加せず、0.2 の解釈の X 成分だけを用いる。偶数回の反転を含む語を反転なしへ、奇数回の語を最初の一回の反転と反転なしの語へ移す。対象対の表示から得られる種について、偶奇が有理写像だけで決まることを 7.2 で証明する。一般の交換行列にこの結論は仮定しない。[BGM] §3.1 冒頭は反転を加える定義の参照先である。

*Needs:* 0.2。部分群、群の反対群、同型の像。既存 `Seed/Reverse.lean` は based seed の交換関係の反転を扱うため、本項の符号反転との比較なしに適用しない。

### 0.4 電荷核上の単項式の輸送

まず有限添字集合 I の任意の歪対称整数行列 ε について、行列核上の単項式の輸送を構成する。電荷の原始性や、階数 2 の曲面表示はこの代数補題の仮定にしない。既存の右因子

    Fₖ = TauCeti.matrixMutationRight (Function.Embedding.refl I) (−ε) k 1

を `Finsupp.basisSingleOne` で線形化して整同型 Bₖ とする。`matrixMutationRight_mul_self` から固定した行列に対する Fₖ²=1、`matrixMutation_eq_mul` と歪対称性から ε′=Fₖᵀ ε Fₖ を得る。次の周囲の自由加群の基底上の公式を公開し、その後各段の整同型を終域の行列核へ制限する。

    Bₖ(e′ₖ) = −eₖ,  Bₖ(e′ᵢ) = eᵢ+[εᵢₖ]₊eₖ  (i ≠ k).
    Bσ(e′ᵢ) = e_{σ(i)},  Bς(e′ᵢ) = −eᵢ.

階数 2 の電荷列への適用では、v′ₖ=−vₖ、v′ᵢ=vᵢ+[εᵢₖ]₊vₖ と置き、v′=v∘Bₖ を証明する。この可換式と ker(v)⊆ker(ε) によって電荷核 K の間の輸送を得る。これにより有限語の w:K_end→K_start を構成する。ここでも原始性や rank H=2 は不要である。Fₖ²=1 は固定した交換行列での右因子の恒等式であり、変異後の行列から作った右因子との同一視ではない。反転では電荷列自体を保ち det を反転するため、Bς は電荷写像を可換にする写像ではなく、単項式の引き戻しを表す。

核条件により二項式の指数が零となることから、各生成操作と有限語について Xˣ∘F_w=`X^{w(x)}` を証明する。連結について `w_{ww′}`=w_w `w_{w′}` とし、逆語との整合性は各辺の X 写像の逆と単項式の独立性、または核上の直接の計算で示す。さらに電荷列が N を有理的に張る、すなわち rank H=2 の場合に限って K=ker(v)=ker(ε) を得る。この等号は 5.3 の終端格子の再構成に使う。単項式輸送そのものとは仮定を分ける。計算の詳細は [補足 B](#b-電荷と有限指数) に記す。

*Needs:* 0.1–0.3。既存 `Algebra/Cluster/ExchangeMatrix/Factorization.lean`、整数行列の核、有限自由加群の線形同型。quantum compatible form の `formMutation` とは仮定が異なり、本項では上の右因子と交換行列の因数分解を使う。

### 0.5 境界付値を記録する整数列

整数列 b を、既存 `TauCeti.YSeed I (TauCeti.InfTropical ℤ)` の係数 `InfTropical.ofAdd (bᵢ)` と交換行列 B=−ε で表す。更新は native `YSeed.mutation` の指数表示として定義し、`toAdd` の計算により次の公式を得る。置換では `b′ᵢ=b_{σ(i)}`、反転では b′ᵢ=−bᵢ とする。

    b′ₖ = −bₖ,
    b′ᵢ = bᵢ+[εᵢₖ]₊bₖ−εᵢₖ min(0,bₖ)  (i ≠ k).

変異の対合性と有限列の連結・逆語は `YSeed.mutation_mutation` と `YSeed.Word` の既存結果を指数表示へ移し、反転を含む操作との整合性は 0.3 の係数 semifield 上の補題から得る。有限個の付値を同時に記録する際は `Trop J=InfTropical (J→₀ℤ)` とし、`YSeed.toExtendedMatrix_mutation` により frozen row としての行列更新にも一致することを公開する。

これが実際の境界因子の付値を輸送することは 5.5 の目標であり、任意の付値で ord(1+f)=min(0,ord(f)) を仮定しない。[GHK-C] (1.4) の境界付値による熱帯化との対応を証明する。

*Needs:* 0.2–0.3。既存 `CoefficientSemifield/Tropical.lean`、`YSeed/{Basic,Word,Geometric}.lean`。整数表示と境界付値への比較を追加する。

### Examples

**Checks.** ε₁₂=1 の二変数の種で μ₁ は (X₁⁻¹,X₂(1+X₁)) となる。ς の後の変異は (X₁,X₂⁻¹(1+X₁)⁻¹) で、先に変異して全成分を逆数にしたものと一致する。b=(1,−2) は μ₁ で (−1,−2) に移り、変異後の行列で再度 μ₁ を行うと (1,−2) に戻る。bₖ=0 のとき一般の関数 f=−1+t では ord(1+f)>0 となるため、付値公式には 5.5 の幾何的根拠が必要である。

### Dependencies

0.1 → 0.2 → 0.3、0.1–0.3 → 0.4、0.2–0.3 → 0.5。曲面の存在はこのレイヤーの仮定にしない。

## Layer 1: 境界格子と向きの反転

### 1.1 サイクル交点行列と飽和

有限自由整数加群 L と対称形式 B を取り、単模性を既存の `B.IsPerfPair`、δ=ΣDⱼ の原始性を `TauCeti.IsPrimitive δ`、特性元条件を `B.IsCharacteristic δ` で表す。n≥1 とし、次を仮定する。

    Dᵢ·Dⱼ = −2[i=j]+[j=i+1]+[j=i−1],
    x² ≡ x·δ  (mod 2)  (x ∈ L).

角括弧は各等式の指示値であり、n=1,2 でも二つの隣接項を個別に数える。M は `Submodule.span ℤ (Set.range D)`、M⊥ は `B.orthogonal M` とする。Dⱼ の一次独立性、δ²=0、M∩M⊥=ℤδ、M_Q+(M⊥)_Q=δ⊥_Q を証明する。有理化と整数 carrier の比較は既存 `IntegralLattice.ofIntegralForm` と `ofIntegralForm.carrierIsometry` に接続し、Mˢ=(M⊗ℚ)∩L を構成する。サイクルの係数指標の差分方程式から、Mˢ/M が位数 t の巡回群で t|n となることを示す。

さらに L の符号数が (1,9) なら、δ⊥/ℤδ は階数 8 の負定値偶単模格子、M/ℤδ は `A_{n−1}(−1)` であり、t²|n、n≤9 となる。ここでは原始性と完全双対から、境界各成分への交点を指定しない f₁·δ=1 なる元を取り、特性元条件により f₀=f₁−((f₁²+1)/2)δ を平方 −1 に補正する。U₀=ℤδ⊕ℤf₀ の完全な制限形式に既存の直交分解定理を適用して δ⊥/ℤδ≅U₀⊥ を得る。この構成は 1.2 の境界に適合する f を使わない。

A 型格子との比較は、商の基底と負の Cartan 行列を作り、形式の符号を反転して `IntegralLattice.Isometry.ofGramMatrixEq` を適用する。標準格子の `discriminant_typeARootLattice` と、整数 overlattice の `IntermediateCarrier.IsIntegral.index_sq_dvd_discriminant` が判別式 n と指数平方の整除を供給する。本項の新規部分はサイクルの係数計算、商の形式と基底、標準 A 型への等長同型、飽和指数の比較、および符号数からの階数制約である。A 型の行列式計算、指数平方公式、原始元の基底延長を再証明しない。[補足 A](#a-境界格子の整数計算) に接続手順を記す。

商格子の実体には、有限自由整数形式を `ofIntegralForm` で移した既存 lattice の `radicalQuotient` を使う。これは退化形式にも定義され、商の full integral carrier、形式の下降、自然な全射、非退化性、偶性の下降、正負の符号数の保存を既に備える。新規に証明するのは、M と δ⊥ のそれぞれについて有理 radical が ℚδ、整数 kernel が ℤδ であること、および native 商と M/ℤδ、δ⊥/ℤδ の比較である。この比較は `radicalQuotientMap_eq_zero_iff` と `LinearMap.quotKerEquivOfSurjective` から得る。単模性は radical quotient 一般の性質ではなく、従来どおり U₀ の完全直交分解から証明する。

*Needs:* Mathlib の有限自由加群・完全双対・商・直交補、Tau Ceti の `IsPrimitive`、`BilinForm.IsCharacteristic`、有理化、A 型格子・overlattice の既存 API。飽和からの torsion-free 商と直和因子の比較には `Submodule.isTorsionFree_quotient_iff`、`Submodule.exists_isCompl_iff_isTorsionFree_quotient` を用いる。

### 1.2 鏡映を持ち上げる対合

1.1 の符号数を仮定しない部分の条件の下で、ある j₀ と f∈L が存在して f²=−1、f·Dⱼ=[j=j₀] となることを証明する。係数指標 χⱼ の計算で j₀ を選び、Mˢ 上の整数線形形式を構成する。`Submodule.isTorsionFree_quotient_iff` と `Submodule.exists_isCompl_iff_isTorsionFree_quotient` により Mˢ の補部分加群を取り、その射影を合成して形式を L へ延ばす。完全双対の逆 `B.toPerfPair.symm` と特性元条件が平方 −1 の f を与える。新規に証明するのは χⱼ₀ が零となる成分の存在と、得た f の全境界交点である。

U=ℤδ⊕ℤf の Gram 行列 [[0,1],[1,−1]] から制限形式の完全性を確認し、既存 `LinearMap.BilinForm.isCompl_orthogonal_of_restrict_bijective` で L=U⊕U⊥ を得る。U⊥ の完全性も `isPerfPair_restrict_of_isCompl_orthogonal` と二重直交補の定理から得る。f は格子の元であり、曲線の有効性や切断の存在を追加条件にしない。

j₀ 以外の境界根の反射を、既存 `Module.reflection` と形式を保つ反射の API で構成する。根の平方は −2 なので、平方 +2 を入力とする `IntegralLattice.rootReflection` を使う場合は形式の符号を反転する。負の A 型格子と既存 `typeAIsometryZeroSumLattice` を結び、単純根の反射が隣接互換になることを示す。順序反転の置換に対応する w₀ を取り、`g₀=id_U⊕(−w₀|_{U⊥})` と置く。g₀ は対合的等長変換で、f、δ を固定し、Dⱼ を `D_{2j₀−j}` に移し、κ∈M⊥ に対し g₀κ=−κ+2(κ·f)δ を満たす。n=1 では反射語を空とする。

この主要定理を `exists_cycle_reversing_involution` として [Suggested.lean](Suggested.lean) に、既存の整数加群・形式・等長同型と原始性・特性元の述語を直接使って述べる。[補足 A](#a-境界格子の整数計算) のサイクルから標準 A 型への比較と境界作用が新規の証明であり、整数値双対の延長、一般の直交分解、標準 A 型の座標和零模型は既存結果を適用する。

整数形式の carrier を既存 `IntegralLattice` に移した後は、`orthogonalSplittingIsometry` に U の制限形式の全単射性を渡す。これにより L=U⊕U⊥ は carrier と形式を含む native 等長同型になる。`Isometry.orthogonalSum` と `Isometry.neg` をこの同型で運び、`id_U⊕(−w₀)` を構成する。直交和の等長同型・逆写像・形式保存は既存結果を使用し、本件では根反射語の整数性と境界成分への作用を証明する。

*Needs:* 1.1。`Submodule` の飽和と補部分加群、`B.toPerfPair`、`BilinForm` の完全制限と直交分解、`IntegralLattice` の有理化・Gram 行列による等長同型・A 型座標模型、反射と有限置換の既存 API。

### 1.3 符号を保持した境界等長群

O(L) の carrier は既存 `LinearMap.BilinForm.isometryGroup B` とし、Conventions の境界条件を満たす G⁺ と Ĝ を、それぞれ O(L) と O(L)×ℤˣ の `Subgroup` として構成する。ℤˣ が符号群 {±1} の実体である。1.2 の `B.IsometryEquiv B` との辞書には `isometryGroupEquivIsometryEquiv` を用い、等長変換の群構造を別に定義しない。

符号射影 η:Ĝ→ℤˣ の kernel を G⁺ と同定し、(g₀,−1) により η が全射であることと、1↦id、−1↦(g₀,−1) が群準同型の切断になることを証明する。`GroupExtension.ofMulEquivKer` でこの完全列を構成し、切断を既存 `GroupExtension.Splitting` に入れる。`Splitting.conjAct` と `semidirectProductMulEquiv` により、共役作用 h↦g₀hg₀ の半直積 Ĝ≅G⁺⋊C₂ を得る。成分の評価と逆写像は Tau Ceti の splitting API を使い、半直積の一般構成を実装し直さない。

n≥3 では Ĝ→O(L) が単射であることを証明する。n≤2 では全ての境界置換が回転でもあるため、中央の切断 −1↦(id,−1) を別に取れる。この切断の共役作用が自明であることを確認し、`SemidirectProduct.mulEquivProd` から Ĝ≅G⁺×{±1} を得る。この中央元と 1.2 の (g₀,−1) を混同しない。

*Needs:* 1.1–1.2。native `isometryGroup`、`Subgroup`、`MonoidHom.ker`、`GroupExtension`、`GroupExtension.Splitting`、`SemidirectProduct`。新規義務は境界条件の群演算による保存、符号の kernel、指定した切断、n に応じた忘却写像の単射性である。

### 1.4 電荷核と境界像による忠実性

まず有限次元の非退化対称 ℚ 双線形空間について、非零等方元 δ の直交超平面 δ⊥ を点ごとに固定する等長変換は恒等であることを、サイクルや曲面を仮定しない補題として証明する。既存 `LinearMap.BilinForm.orthogonal_orthogonal` が (δ⊥)⊥=ℚδ を与え、δ と交点 1 の f の像との差を aδ と書いて平方を比較すれば a=0 となる。

これを L の有理化に適用する。1.1 の M_Q+(M⊥)_Q=δ⊥_Q により、M⊥ と全 Dⱼ を固定する整数等長変換は恒等である。従って G⁺ の元は `(g|M⊥, gD₀)` により決まり、Ĝ の元は向き η、符号付き制限 ηg|M⊥、D₀ の順像 j により決まる。ここで逆像としての境界作用は `gD_l=D_{η(l−j)}` である。

制限の carrier には `LinearEquiv.ofSubmodules` を用い、M の保存から M⊥ の保存を得る箇所には `TauCeti.BilinForm.IsIsometry.map_orthogonal` を使う。形式保存は同じ namespace の `restrict` から得る。M⊥ 上の形式の非退化性は仮定しない。

*Needs:* 1.1、1.3。体上の二重直交補、既存の部分加群への線形同型の制限。新規の剛性補題と、サイクル境界条件への適用を公開する。

### Examples

**Checks.** n=1 では Gram 行列は (0)、n=2 では [[−2,2],[2,−2]] である。n=2 では鏡映と恒等の境界置換が同じでも符号付き元は異なる。n=3 では j↦−j は 1 と 2 を交換し、回転ではない。U の行列式は −1 であり、平方が −1 の f を平方 0 の元に置き換えた分解を使用しない。

### Dependencies

1.1 → 1.2 → 1.3、1.1 と 1.3 → 1.4。1.2 の一般格子定理は符号数や曲面を仮定しない。n≤9 と t²|n にだけ符号数 (1,9) を使う。

## Layer 2: 曲面の基礎と有理曲面への適用

### 2.0 曲線・曲面のコホモロジーと Euler 標数

ℂ 上の次元 ≤2 の射影スキーム X と coherent sheaf F に対し、各 Hⁱ(X,F) の有限次元性、i>dim(supp F) での消滅を供給する。非被約曲線・有限厚化も含める。豊富性には既存 `LineBundleClass.IsAmple` を用い、豊富線束 A の十分大きな全ての冪について F⊗Aᵐ の大域生成と i>0 のコホモロジー消滅を得る。これらは既存のスキーム・層コホモロジー上の定理として追加し、対象対固有の公理にしない。

組立ての入力には、既存の射影空間の全次数 cohomology、`Proj.eventually_exists_epi_free_tensor_twistingSheaf` による有限直和 O(−p)ʳ→F の全射、`Scheme.Modules.isFinitePresentation_kernel` による coherent kernel の閉性を使う。全射の定理の仮定は quasi-compact な Proj、次数 1 の basic opens による被覆、F の quasi-coherence と finite type であり、kernel の定理には局所 Noetherian 性を渡す。射影埋込先 ℙᴺ の N は任意でよい。`Module.Basis.finite_cohomology_twistingSheaf` は任意の基底環上で全ての O(d) の cohomology の有限生成性を供給し、`nonempty_linearEquiv_cohomology_top_twistingSheaf` と `nonempty_linearEquiv_cohomology_top_twistingSheaf_dual` は最上次数も計算する。従って ℙ² の上次数を別に再構成する必要はない。これらを有限 resolution の必要な長さと次元シフトへ接続し、[Debarre-S] Theorem 2.28、Corollary 2.29、Theorem 2.37、Corollary 2.38 の証明を実装する。

大域生成の section 延長には既存 `Scheme.Modules.eventually_exists_generatingSections_tensor_tensorPow` を使う。この定理は一つの線束 L 自身の section の affine nonvanishing loci による被覆を要求する。一般の `IsAmple` からは、既存の有限被覆抽出 `IsAmple.exists_finset_isAffineOpen_nonvanishingLocus` を取り、有限個の正の指数の共通倍数と section の冪を使ってこの仮定を供給する。指数を共通倍数で割った有限個の剰余類の twist も扱い、十分大きい全ての m での主張にする。高次消滅には、一般の豊富 A を射影埋込みの twist へ結ぶ補題も供給する。固定した very ample H に対して Aʳ⊗H⁻¹ の有限大域生成を正の r で得て、H の埋込みと生成 section の定める射の積を、既存 `AlgebraicGeometry.Proj.segre` の閉埋込みへ合成する。この閉埋込みが Aʳ を O(1) の引き戻しとすることを証明する。従って F⊗Aʲ（0≤j<r）の各々に、この埋込みでの resolution と既存 O(d) の高次消滅を適用すれば、十分大きい全ての m で F⊗Aᵐ の高次消滅を得る。Aʳ の very ampleness と twist の同定は本項の橋渡しであり、Serre vanishing を先に仮定しない。

支持次元の消滅には、既存 `Scheme.Modules.exists_iso_pushforward_subschemeι_annihilator` で F を ann(F) の閉部分スキームからの pushforward に移す。新規に、次元 d≤2 の射影スキームを d+1 本の超平面の補集合で覆う補題を供給する。そこへ既存 `Scheme.Modules.subsingleton_cohomology_of_isAffineOpen_of_card_le` を適用する。separated 性から affine diagonal を、F から quasi-coherence を渡す。有限台では既存 `Scheme.Modules.isFinite_subschemeι_annihilator_comp` により支持スキーム Z=Spec A が ℂ 上有限であることを得る。Z 上の対応する coherent sheaf G の section 加群 Γ(Z,G) に、既存 `TauCeti.Module.finrank_eq_finsum_finrank_localization_tensorProduct` と `TauCeti.finrank_eq_length_mul_finrank_residueField` を適用し、次元を各局所加群の長さと residue degree の積の和へ分解する。`Scheme.Modules.isBaseChange_germₗ` でこれらの局所加群を実際の stalk に移し、閉埋込の stalk ring の全射に沿う `Module.length_eq_of_surjective` と、ℂ 上の閉点の residue degree が 1 であることを渡して χ(F)=Σ_x length(F_x) を得る。有限代数・有限加群から有限長を保証した上で長さと次元を比較し、`toNat` や `finrank` が無限の場合に零となる規約に依存しない。

有限射 f の全次数比較は、有限射が affine であることから既存 `Scheme.Hom.cohomologyPushforwardBaseLinearEquivOfIsAffineHom` をそのまま用いる。係数が quasi-coherent で、f と両スキームが同じ基底環上にあることを保持し、基底環線形な比較 Hⁱ(Y,f_*F)≃Hⁱ(X,F) を使う。線束に対する射影公式は `InvertibleSheaf.toFiniteLocallyFree` を通した既存 `FiniteLocallyFreeSheaf.pushforwardTensorLeftIso` と `tensorPushforwardUnitIso` を用いる。これらのために別の Čech 比較や有限射専用の射影公式を作らない。

χ は `AlgebraicGeometry.Scheme.Modules.eulerCharBelow` に統一する。切断次数は曲面で 3、曲線で 2 とし、本項の有限性と次の次数の消滅を渡して既存の同型不変性・短完全列での加法性を使う。有限性と消滅を `finrank` の定義から仮定しない。

*Needs:* Mathlib と Tau Ceti の native スキーム・層加群、coherent sheaf、層 cohomology、長完全列、Proj と twisting sheaf。共有する有限性・消滅の必要部分は SchemeAndStackFoundations §2.6 の型と基底射に合わせて追加する。

### 2.1 曲面、因子、線束、交点

滑らかな射影複素曲面を扱う。本項に有理性は不要である。Pic(Y) は既存 `TauCeti.AlgebraicGeometry.LineBundleClass` の加法表記とし、Cartier 因子からの準同型と Cartier 類群との同型を利用する。有効因子・非零 section・有効線束類の対応、曲線への制限、引き戻しの函手性は既存の層・因子 API に接続する。標準束 ω_Y は native `differentialForms` の次数 2 とし、`isInvertible_differentialForms` と `differentialFormsIsoDet` を滑らかな相対次元 2 の構造射へ適用する。既約曲線の Cartier 性には、native 正則性と全点の coheight≤2 を渡して `Scheme.IdealSheafData.isEffectiveCartier_vanishingIdeal_closure_singleton_of_isRegular` を使う。二次元正則局所環の高さ 1 の素イデアルの主性は既存の供給である。

素因子の添字には既存 `CodimensionOnePoint Y`、Weil 因子には `SchemeWeilDivisor Y` を使う。`WeilDivisor.OrderSystem.ofScheme Y` は integral・Noetherian な Y の有理関数単元 `Additive Y.functionFieldˣ` の位数を用いる native order system であり、曲線に限定されない。滑らかな曲面の各 stalk の UFD 性は `IsRegular.uniqueFactorizationMonoid_stalk` に coheight≤2 を渡して得る。この上で既存 `SchemeWeilDivisor.equivCartierDivisorOfUniqueFactorizationMonoid` と `classGroupAddEquivLineBundleClassOfUniqueFactorizationMonoid` により Cartier 因子・Weil 因子・Picard 類を同定する。`isEffective_equivCartierDivisorOfUniqueFactorizationMonoid_iff` による有効性の対応と、`classGroupAddEquivLineBundleClassOfUniqueFactorizationMonoid_divisorClass_ofPoint` による O(C) の符号も継承する。任意の線束の有限素因子展開は既存 `Scheme.CartierDivisor.weilToLineBundleClassHom_surjective` と `weilToLineBundleClassHom_single` を使い、別に素因子表示の存在を証明しない。

完全線形系の集合は、この order system の `completeLinearSystem` とする。`mem_completeLinearSystem_iff_divisorClass`、`mem_completeLinearSystem_iff_exists_principalDivisor` と上の Picard 同型から、これは指定した線束類を持つ有効 Cartier 因子の集合と一致する。指定した非零 section s の零因子には、既存 `Scheme.Modules.dualHomUnitEquiv` で得る双対評価 φ:L⁻¹→O_Y の実際の `φ.imageIdealSheaf` を用いる。Y の整性と s≠0 から `InvertibleSheaf.mono_of_ne_zero_to_unit` により φ の単射性を得て、`isEffectiveCartier_imageIdealSheaf` と `mk_toInvertibleSheaf_imageIdealSheaf` により、この ideal の effective Cartier 性と線束類 L⁻¹ への一致を得る。存在と類の一致だけが必要な箇所には既存 `exists_isEffectiveCartier_of_ne_zero` を直接使える。`Scheme.IdealSheafData.IsEffectiveCartier.toCartierDivisor` を通して上の完全線形系へ移し、2.2 の基点解消、2.5 の |C|、後の補間で同じ carrier を用いる。新規に接続するのは、指定した section と零因子の比較の自然性・H⁰ の射影化・評価・固定成分と移動部分・基点多重度である。存在定理だけから指定した section の零点やその自然性まで得られたとは扱わない。

交点 B:Pic(Y)×Pic(Y)→ℤ は既存 `Chow.classIntersectionNumber` の加法表記とする。その定義は

    B(L,M)=χ(O_Y)−χ(L⁻¹)−χ(M⁻¹)+χ(L⁻¹⊗M⁻¹)

で、χ の切断次数は 3 である。Picard 類への降下、同型不変性、対称性は既存定理を用い、2.0 によりこの切断和が実際の Euler 標数であることを保証する。別の Picard 群、数値同値、交点の carrier を作らない。

新規の主要な比較は、任意の閉じた整曲線 i:C→Y に対して

    B(x,[C])=LineBundleClass.intersectionNumber ℂ i x

となることである。C の滑らかさは仮定しない。O_Y(−C)→O_Y→O_C とその線束 twist の完全列、2.0 の χ 加法性、既存の singular integral curve 上の Euler 次数加法性を用いる。`toInvertibleSheaf` が有効 Cartier ideal O(−C) を表す場合、[C] にはその逆元を使う。一般の線束の素因子展開には、上の `weilToLineBundleClassHom_surjective` を適用する。`B(L,M⊗O(C))−B(L,M)=χ(M⁻¹|C)−χ((L⊗M)⁻¹|C)=deg_C L` という差の公式を整数回反復して B の双線形性を証明する。B 自体を素因子和として再定義して降ろす経路は採らない。

制限次数の加法性には `LineBundleClass.intersectionNumber_mul_of_isClosedImmersion` を用いる。仮定は C が integral、i が閉埋込、Y が ℂ 上 proper、dim C=1、および基底射の一致であり、特異曲線にも適用できる。局所交点長との一致には `intersectionNumber_inv_mk_toInvertibleSheaf_eq_finsum_of_isClosedImmersion` を使い、相異なる曲線が適切に交わることと ℂ 上の residue degree が 1 であることを渡す。相異なる素因子の非負性は `intersectionNumber_inv_mk_toInvertibleSheaf_nonneg_of_ne` を B の比較へ輸送する。射影公式についても既存の finite-flat 曲線版を使える場合は直接適用し、特異曲線への有限正規化のように flatness がない場合はその仮定を追加してしまわない。

有限正規化 ν:C̃→C による次数比較が必要な箇所には、既存の conductor cokernel Q とその有限台・cohomology 消滅、2.0 の affine pushforward 比較と射影公式を組み合わせる。有限台に対する既存 `Scheme.Modules.eulerCharBelow_tensor_of_finite_support` に `InvertibleSheaf.toFixedRankOne` を渡して χ(Q⊗L)=χ(Q) を得る。正規化完全列とその twist の χ を比較して

    deg_C(L)=χ(C,L)−χ(C,O_C)=deg_C̃(ν*L)

を得る。この補題は再利用可能な正規化比較として公開する。整曲線上の次数加法性は既存なので、その証明を再びこの経路で構成しない。

nef は全既約曲線との B の非負性、豊富は native `LineBundleClass.IsAmple` とする。有効因子 D の台の各成分 C で D·C≥0 なら D が nef であることを、既存の異なる成分間の非負性から得る。Pic(Y) の有限自由性・単模性は有理曲面への適用で証明する。degree comparison と bilinearity は SchemeAndStackFoundations §5.9 の native surface pairing を拡張する形で供給する。[Debarre-S] §3.2, Definition 3.5、Theorem 3.6、Lemma 3.7 を参照する。

*Needs:* 2.0。native Weil–Cartier–Picard 同型、有効性・素因子展開・完全線形系の集合、最高次微分形式、正則曲面の素因子 Cartier 性、特異整曲線の Euler 次数と制限交点、conductor の既存 API。

### 2.2 点 blowup と共通解消

滑らかな射影複素曲面 Y と閉点 p に対し、点の被約 ideal sheaf I と既存 `Scheme.IdealSheafData.blowup` から X=Bl_p Y、π:X→Y を取る。有理性や境界は仮定しない。例外閉部分スキーム i:E→X は中心の逆像、ideal は `I.comap I.blowupToBase` とする。既存の普遍性、affine chart と被覆、中心外同型、locally Noetherian な場合の properness、`isEffectiveCartier_comap_blowupToBase` を用いる。開制限と対の同型に対する自然性には既存 `blowupMap` を直接使い、`blowupMap_blowupToBase` による可換正方形と `comap_comap_blowupMap` による例外 ideal の保存を継承する。p を p′ に移す ℂ 上の同型 f:Y≅Y′ では、中心 ideal の `comap` の一致で始域を輸送し、f が flat であることを `isPullback_blowupMap_of_flat` へ渡して Bl_p Y≅Bl_{p′}Y′ を得る。逆射・合成との整合性は `eq_blowupMap` の一意性から得て、Picard 引き戻しの可換性と各段の中心を対応させる順序付き有限 blowup 列への輸送を供給する。一般の射を持ち上げる箇所では、延長 ideal が effective Cartier であることを渡して既存 `blowupLift` を用いる。 スキーム・可逆層の局所比較はこの π と E について行い、交点の比較もこの同型と整合させる。

既存 `SmoothOfRelativeDimension.exists_etale_affineSpace` を相対次元 2 の構造射に適用し、p を含む affine 開集合 U=Spec R と ℂ 上の étale 座標 (u,v):U→𝔸² を取る。像の平行移動と U の縮小により原点の scheme-theoretic fibre を p だけにし、J=(u,v)、I|U=J、R/J≅ℂ を得る。étale 射の flatness により u,v は正則列となる。generic affine blowup algebra の既存の生成元・普遍性と flat base change を用い、実際の π⁻¹U の二 chart を R[t]/(v−ut)、R[s]/(u−vs) と同定する。重なりでは t=s⁻¹、例外 ideal は各々 (u)、(v) である。例外 fibre には `Ideal.ReesQuotient.equivAssociatedGraded` と正則列版の `RingTheory.Sequence.IsWeaklyRegular.associatedGradedEquiv` を用い、既存の次数成分・斉次性の互換性から Proj の同型を作る。R/J≅ℂ と基底射の一致を保持して

    E ≅ Proj(Rees(J)/J Rees(J)) ≅ Proj(gr_J R) ≅ ℙ¹_ℂ

を得る。新規に必要なのは実際の例外閉部分スキームとこの Proj の比較であり、gr_J R≅(R/J)[U,V] の代数的証明は既存定理を適用する。参照は [Stacks, Tag 0AGQ, Lemma 54.3.1](https://stacks.math.columbia.edu/tag/0AGQ) である。

さらに、例外 ideal の可逆層 O_X(−E) と Rees Proj の O_X(1) を、上の chart の生成元 u,v と twisting sheaf の標準生成元を対応させて同定する。この同型を E に制限し、既存 `Proj.pullbackTwistingSheafIso` および相対 Proj の degree-one 生成下での twisting pullback 比較を使って O_E(−E)≅O_{ℙ¹}(1)、従って O_E(E)≅O_{ℙ¹}(−1) を得る。各比較で開被覆の重なりの可換性も証明する。これにより実際の E が既存 `IsExceptionalCurveOfFirstKind` を満たすことを証明する。`projectiveLine.picardDegreeEquiv` と `nonempty_iso_twistingSheaf_iff` は、この可逆層と次数の辞書に用いる。

X の滑らかさは中心外同型と上の局所表示から証明する。二 chart が Bl_0 𝔸² の二つの affine-plane chart の étale base change であることを、構造射も含めて確認し、étale 性・smooth 性の base change と合成から π⁻¹U の滑らかさを得る。射影性には `isGeneratedInDegreeOne_reesAlgebra` と、degree one で生成される graded quasicoherent algebra の relative Proj をその degree-one 部分の対称代数の relative Proj へ閉埋込する既存定理を用いる。Y の very ample な H を固定し、2.0 で I⊗Hʳ の有限大域生成を得る。次数 n の成分を (Hʳ)ⁿ で twist した Rees algebra の relative Proj が元の X と同型であることを、H の局所自明化と transition map から構成する。生成 section は X→Y×ℙᴺ の閉埋込みを与え、Y の射影埋込みと既存の Segre 閉埋込みを合成して、native `IsProjectiveOver ℂ` として X の射影性を得る。この構成は 2.0 の有限大域生成に依存し、後の 2.4 の Nakai を前提にしない。

X の滑らかさ・射影性を得た後で、上の exceptional-curve predicate の `intersectionNumber_self` を適用する。ℂ 上の同型 E≅ℙ¹_ℂ により H⁰(E,O_E) の次元は 1 であり、2.1 の surface pairing と制限次数の比較から E²=−1 を得る。

構造層については、この U=Spec R 上の二 chart の環 A、B と重なりの環 C に対し、局所化と整合する Čech 列 0→R→A⊕B→C→0 の完全性を証明する。重なりの Laurent 式の正負の冪への分解と、正則列に関する環の交わりの計算を使う。この比較と既存の有限 affine 被覆による cohomology 計算を開集合上で組み立て、π_*O_X≅O_Y と Rⁱπ_*O_X=0（i>0）を sheaf の同型・消滅として得る。局所計算の参照は [Stacks, Tag 0AGS, Lemma 54.3.4](https://stacks.math.columbia.edu/tag/0AGS) である。線束 L に対しては、既存 `FiniteLocallyFreeSheaf.higherDirectImagePullbackIso` と `isZero_higherDirectImage_pullback`、通常の射影公式を用いて π_*π*L≅L と Rⁱπ_*π*L=0 を得る。`Scheme.Hom.cohomologyPushforwardBaseLinearEquivOfIsZeroHigherDirectImage` にこれらを渡し、ℂ 線形な Hⁱ(Y,L)≅Hⁱ(X,π*L) を構成する。一般の高次射影公式と acyclic pushforward の比較機構は既存定理を適用する。

native Picard 群への準同型 (x,a)↦π*x+a[E] が同型となることと、2.1 の交点について

    Pic(Y)⊕ℤ ≅ Pic(X),   (x,a) ↦ π*x+a[E],
    (π*x)·(π*y)=x·y,   (π*x)·E=0,   E²=−1

を証明する（[Hacking-S] Proposition 7.1）。Picard 分解には既存の正則曲面の excision を使う。具体的には `LineBundleClass.pullback_surjective_of_isOpenImmersion_of_isRegular` と `pullback_eq_one_iff_exists_prod_of_isOpenImmersion_of_isRegular` に、integral・Noetherian・regular、全点の coheight≤2、開埋込み、および補集合の余次元 1 の点を列挙する有限集合を渡す。Y∖{p}→Y では p の余次元が 2 なのでこの有限集合を空にでき、Pic(Y)→Pic(Y∖{p}) は同型となる。X∖E→X では E の generic point 一点を取り、制限の kernel は ℤ[E] となる。既存の中心外同型で開集合を同定すると、これらは (x,a)↦π*x+a[E] の全射性を与える。E²=−1 が a の一意性を与え、Y 側の開制限の単射性が残る x の一意性を与える。素因子の閉包・有理関数の付値・Picard 開制限の一般比較は既存 excision の証明を再利用する。交点の pullback 保存は、直前の cohomology 比較を `Chow.classIntersectionNumber` の四つの Euler 項へ適用する。E との直交性は、i≫π が Spec ℂ 上の点 p を経由することを示し、既存 `intersectionNumber_pullback` と `intersectionNumber_eq_zero_of_eq_comp` を 2.1 の比較へ輸送して得る。有限回の点 blowup では、各段の例外類を最終曲面へ全変換で引き戻すことで、この直交直和を反復する。

標準束は 2.1 の次数 2 の native `differentialForms` を用い、既存 `cotangentMap` の最高外冪から π*ω_Y→ω_X を構成する。étale 座標とその blowup chart の比較により、u-chart で d u∧d v=u d u∧d t かつ d u∧d t が標準束の生成元であることを、v-chart でも同様に確認する。中心外では同型で、E に沿う零の位数がちょうど 1 であることを可逆層の比較として証明し、

    ω_X ≅ π*ω_Y⊗O_X(E),   K_X=π*K_Y+E

を得る（[Hacking-S] Proposition 7.2）。`isInvertible_differentialForms` と `differentialFormsIsoDet` は標準束の carrier と determinant の比較を供給し、ここで追加するのはこの blowup 射の Jacobian と divisor の同定である。

固有変換には既存 `ker_blowupMap` による scheme-theoretic closure の比較を使う。有効 Cartier 因子 D の p における多重度を m とすると、局所方程式の m 次の初期形式を上の gr_J R の同型で調べ、π*D=D^str+mE を因子として証明する。反標準被約節点境界では、滑らかな境界点は m=1 なので D′=π*D−E=D^str であり E を含まない。節点は m=2 なので D′=D^str+E となり、自己節点でも二枝を数え、必要な局所計算は étale 近傍で行う。これらの D′ が反標準となることは標準束公式から従う。単純極を持ち零のない局所二形式については、新例外成分の位数が 1−m となることも同じ微分計算から記録し、補足 E の因数分解へ渡す。反復時にはこの被約境界、因子の全変換、例外曲線の固有変換を区別する。

全整数 m について、例外 Cartier 因子の完全列を π*L(mE) で twist して

    0→π*L((m−1)E)→π*L(mE)→i_*(L_p⊗O_{ℙ¹}(−m))→0,
    χ(π*L(mE))=χ(L)+m(1−m)/2

を得る。L_p は p での一次元 ℂ ベクトル空間である。既存の ℙ¹ の全次数計算 χ(O(d))=d+1 と m=0 の cohomology 比較から、正負両方向に漸化式を反復する。例外曲線上の H² が消えるので、H²(π*L)=0 は全整数 m の例外 twist に伝わる。m≤1 では H¹(O_E(−m)) も消え、H²(π*L(mE))≅H²(L) となる。2.3 の有効性にはこの二つの比較を使う。

曲面の指定された双有理写像の基点を有限回の点 blowup で解消し、二つの射を支配する共通解消を構成する。相異なる点の blowup の交換、有限個の節点 blowup 列の共通細分、指定した例外曲線の縮約後の射の降下を供給する。交換では中心の相異性を仮定し、同一点の上にある近接中心の順序を保つ。下降には既存 `Scheme.Hom.existsUnique_comp_eq_of_universallyClosed` を用い、収縮射の properness・surjectivity、全開集合での構造層の section map が同型であること、降ろす射が各 fibre で一定であることを渡す。既に与えられた点 blowup 射 π に沿う下降と、2.4 で構成する任意の (−1) 曲線の縮約への適用を区別する。

共通解消と正則双有理射の分解は [Stacks, Tag 0C5R, Lemma 54.17.1](https://stacks.math.columbia.edu/tag/0C5R)、[Tag 0C5S, Lemma 54.17.2](https://stacks.math.columbia.edu/tag/0C5S) の滑らかな射影曲面の特殊形を対象とする。基点解消では固定成分を除いた線形系を用い、多重度 r≥1 の基点を吹くと移動部分の自己交点が r² 減ることと、その自己交点の非負性により停止を示す（[Hacking-S] Proposition 7.3）。正則双有理射の分解は Tag 0C5R の例外線の conormal O(1) と正規な標的への proper quasi-finite 射による証明を用いる。ここで得る有限列は指定された射と合成が一致するものとし、後の符号数や任意の (−1) 曲線の縮約を先に仮定しない。

**Checks.** 一度目の例外曲線上の滑らかな点をもう一度吹くと、全変換例外類 E₁,E₂ は Eᵢ²=−1、E₁·E₂=0 を満たす一方、一度目の例外曲線の固有変換は E₁−E₂ で平方 −2、E₂ との交点は 1 となる。境界多重度 m=1,2 に対する新例外成分の二形式の位数はそれぞれ 0,−1 であり、被約境界への所属の違いと一致する。

*Needs:* 2.0–2.1。native blowup の普遍性・`blowupMap` の自然性・affine algebra・chart・flat base change・exceptional ideal・中心外同型・固有変換、正則曲面の Picard excision、smooth 相対次元 2 の étale 座標、正則列の associated graded と Rees quotient、Proj と twisting sheaf の比較、ℙ¹ の線束分類と cohomology、degree-one relative Proj の閉埋込みと Segre、native 微分形式と cotangent map、exceptional curve の交点と点を経由する交点の消滅、高次射影公式と acyclic pushforward 比較、morphism の下降。新規に構成するのはこれらと実際の点 blowup を結ぶ Scheme・可逆層の同型、Picard 直交分解、標準束と全・固有変換の比較、構造層の局所比較、指定された写像の基点解消と分解である。宣言ごとの仮定は [点 blowup の供給契約](#from-tau-ceti-点-blowup-の構成と比較) に記す。

### 2.3 有理曲面の数値的定理

滑らかな射影有理曲面について h¹(O_Y)=h²(O_Y)=0、χ(O_Y)=1、Pic(Y) が有限自由、交点形式が単模、rank Pic(Y)+K_Y²=10 であることを証明する。有理性は ℙ² との双有理性で扱い、既存 `Scheme.IsRationalOver` との比較には曲面の次元からアフィン空間の添字数が 2 となる補題を置く。ℙ² の既存の全次数 cohomology、2.2 の Picard 直交分解と cohomology 比較、共通解消を使い、最小有理曲面の分類を先に仮定しない。

任意の線束類 x と既約曲線 C に対し、native の Euler 標数・交点・標準束について

    χ(O_Y(x))=1+(x²−x·K_Y)/2,
    2p_a(C)−2=C²+C·K_Y

を証明する。Riemann–Roch は ℙ² の O(d) の既存計算と 2.2 の全整数 m の Euler 漸化式により点 blowup の両方向へ移し、共通解消で有理曲面へ移す。x²≡x·K_Y mod 2 も得る。この rational-surface slice は SchemeAndStackFoundations §5.10 の型へ整合させ、対象の反標準サイクルを仮定しない独立定理として公開する。[Hacking-S] Theorems 5.2–5.3、[Stacks] Tag 0FVV(6),(7) が主張の参照先である。

滑らかな射影有理曲面 Y 上の線束 L について、H²(L) と H²(ω_Y⊗L⁻¹) の少なくとも一方が消えることを示す。ℙ² との共通解消で、引き戻した線束とその標準補線束の平面次数は d と −3−d になる。少なくとも一方の次数は −3 より大きいので、ℙ² 上の H² の消滅を 2.2 の比較で共通解消へ移せる。元の曲面側の各例外係数は引き戻しで 0、標準補線束で 1 となり、対応する H² の消滅が元の曲面へ降りる。Riemann–Roch の χ(L)=χ(ω_Y⊗L⁻¹) と合わせると、χ(L)>0 なら L または ω_Y⊗L⁻¹ が有効である。nef 類と負に交わる候補を除外して一方の有効性を得る。

算術随伴は O(−C)→O→O_C の完全列から導く。C の正規化と種数の関係には既存 `Scheme.genus_eq_add_finrank_globalSections_cokernel_of_surjective` を用い、ℂ 上の proper integral curve の大域関数が定数であることを渡す。`p_a(C)=h¹(O_C)` とこの式から p_a(C)≥0 を得る。p_a(C)=0 なら正規化の genus と conductor cokernel の H⁰ がともに零であり、既存 `finrank_globalSections_cokernel_unitToPushforwardObjUnit_eq_zero_iff_isIso` によって正規化が同型となる。正則性から ℂ 上の滑らかさを得て、既存 `IsLocallyClosed.exists_rationalPoint_mem` を ℂ 上の全体集合へ適用して rational point を取り、`Scheme.exists_iso_projectiveLine_of_genus_eq_zero_of_section` に渡し、ℂ 上の実際の C≅ℙ¹ を得る。二 section による射の構成や genus-zero 分類を別に再証明しない。

*Needs:* 2.0–2.2。ℙ¹・ℙ² の既存 cohomology、点 blowup における標準束公式、χ と H² の比較、正規化・conductor の genus-drop と iso 判定、genus-zero curve の分類。

### 2.4 正錐、豊富性、曲線の縮約

滑らかな射影有理曲面について、ℙ² との共通解消と 2.2 の直交分解から、実 Picard 空間の交点形式の符号数が (1,ρ−1) であることを証明する。豊富類が選ぶ正錐成分、その閉包、非零の nef 等方類との交点による成分の識別を構成する。正錐の同じ閉包に属する類の交点の非負性も証明する。直交和の階数・符号数には格子の既存 API を使い、上記の正錐の識別と交点不等式はこの形式への適用として証明する。

滑らかな射影有理曲面上の整数類 h が h²>0 かつ全既約曲線 C で h·C>0 を満たすことと、native `LineBundleClass.IsAmple h` の同値を証明する。nef 類の引き戻しは平面直線の全変換と非負に交わるので、2.2 と同じ平面次数による比較で H² が消える。平方が正なら高い冪の χ が正になり、その冪を有効 Cartier 因子で表せる。その各既約成分で次数が正なので制限線束が豊富になる。一次元の判定は χ と Serre 消滅を使い、特異成分や非被約の因子にも適用できる。制限線束の豊富性から高い冪の大域生成を得て、曲線との正の交点から対応する射の有限性を示す。豊富類と nef 類の和の豊富性、豊富錐の開性、負の既約曲線の有効曲線錐の閉包での極線性を独立した補題として得る。

任意の滑らかな射影複素曲面上の滑らかな有理 (−1) 曲線を、既存 `Scheme.IdealSheafData.IsExceptionalCurveOfFirstKind` に接続する。この型は effective Cartier 性、ℙ¹ との同型、conormal O(1) を含み、数値的な −1 との比較には既存 `isExceptionalCurveOfFirstKind_iff_intersectionNumber` と 2.1 を使う。縮約の存在、標的の滑らかさ、互いに素な有限集合の同時縮約、十分大きい N で Nπ*h−E が豊富となることは新規の実装目標に残す。[Stacks] Tag 0C2N, Lemma 54.16.9(1)、Tag 0C2I を用いる。線形系から射を作るだけでなく、縮約点の完成局所環が ℂ[[u,v]] となることと滑らかさを証明する。必要な形式関数の比較はこの例外曲線と有限厚化に限定する。縮約が得られた後の射の下降と一意性には 2.2 の既存 descent API を用いる。

*Needs:* 2.0–2.3。native ampleness・曲線次数・exceptional curve、実二次形式、射影性。

### 2.5 階数 2 の扇とトーリック模型

階数 2 格子の扇には既存 `TauCeti.Toric.Fan i` を用いる。有限性と toric cone の条件はこの型に含まれ、正則性・完備性は `Fan.IsRegular`、`Fan.IsComplete` で指定する。曲面の候補は native `Fan.algebraicRealization`、ℂ 上の構造射は `algebraicRealizationOver` とする。以下の局所幾何と Picard 表示には錐集合の非空性を仮定する。完備扇への適用では完備性からこの条件を得る。トーラス開部分は既存 `denseTorusι`、扇の射は `FanHom.algebraicMap` を使い、恒等・合成・chart と密トーラスへの制限の自然性を継承する。

本項で追加するのは、これらの native scheme と曲面の幾何を結ぶ定理である。`regularDualSemigroupEquiv` が与える双対半群の ℕʳ×ℤ^(2−r) 表示を群環へ移して局所 chart を得て、隣接する原始射線が整数基底であることとスキームの滑らかさの対応を証明する。native torus の座標環は ℂ[Hom(N,ℤ)] なので、h↦(u↦det(h,u)) による N≅Hom(N,ℤ) を 0.1 の指数格子との辞書として固定する。トーラスの稠密性、境界成分、指標の因子、分離性・射影性、境界交点、トーリック Picard 群の表示をこの scheme 上で証明する。既存 `Fan.isNormalScheme_algebraicRealization` は正規性を供給するが、組合せ的正則性とスキームの滑らかさの比較は本項の証明義務である。

トーリック Picard 群の表示では一般の Picard excision を再証明しない。密トーラス T の character lattice を基底で ℤ² に移し、`AddMonoidAlgebra.curryAlgEquiv` で座標環を二重 Laurent polynomial ring と同定する。既存 `LaurentPolynomial.isLocalization`、`Polynomial.uniqueFactorizationMonoid`、`UniqueFactorizationMonoid.of_isLocalization` によりその UFD 性を得て、`LineBundleClass.specEquivPic` と GCD domain の `CommRing.Pic` が自明である既存 instance から Pic(T)=0 を得る。2.1 の正則曲面の excision を dense torus の開埋込みへ適用し、補集合の余次元 1 の点が各射線の境界成分の generic point であることを渡すと、境界類が Pic(X(Σ)) を生成する。

関係式には既存 `ker_weilToLineBundleClassHom` を使う。境界に台を持つ principal divisor の有理関数は、torus 上の位数が全て零なので、既存 `Scheme.exists_unit_germToFunctionField_eq_of_ord_eq_zero_of_isIntegrallyClosed` により torus 上の正則単元となる。既存 `AddMonoidAlgebra.isUnit_iff_exists_single` または `unitsEquiv` がその単元を定数と指標の積に分類する。character lattice に必要な `TwoUniqueSums` は整数基底から供給する。従って新規に証明する指標の境界位数 `ord_{Dρ}(z^m)=m(vρ)` と合わせて、native Picard 群の完全表示

    Hom(N,ℤ) → ℤ^{Σ(1)} → Pic(X(Σ)) → 0,
    m ↦ (m(vρ))ρ,   (aρ)ρ ↦ Σρ aρ[Dρ]

を得る。ここで必要な toric scheme の正則性・整性、トーラスの稠密な開埋込み、境界成分との比較は本項で供給する。非空な階数 2 の正則扇の局所 chart、境界生成と関係の計算には完備性を仮定せず、完備性を用いる射影性・共通細分への適用と分けて述べる。

節点に対応する二次元錐 σ での扇の変更には `Fan.starSubdivisionAlong` を使う。`isRegular_starSubdivisionAlong`、`support_starSubdivisionAlong`、`starSubdivisionAlong_isSubdivision` と `IsSubdivision.toFanHom` が正則性、台の保存、細分に伴う扇の射を供給し、`FanHom.algebraicMap` が実際のスキームの射を与える。この既存供給に接続して、階数 2 の正則扇 Σ、その二次元錐 σ に対応する固定閉点 p_σ と ideal sheaf I_σ に対し、

    e_σ:X(Σ*) ≅ I_σ.blowup,
    I_σ.blowupToBase ∘ e_σ = (Σ*→Σ).algebraicMap

を証明する。ここで Σ* は指定された star subdivision、X(Σ)=Σ.algebraicRealization であり、e_σ は密トーラス上の恒等写像と両立する。この局所比較には扇の完備性や対象対の条件を課さない。正則錐の chart を ℂ[x,y] と同定し、中心 (x,y) の二つの native affine blowup chart を y=xt、x=sy の chart と比較する。σ 以外の錐の chart では密トーラスを含む中心外の恒等写像を使う。二 chart 相互および残る chart との重なりで座標変換と基底への射が一致することから同型を貼り合わせ、新射線の境界成分が例外 Cartier 因子に一致し、全被約境界が元の境界の固有変換と例外成分の和であることも得る。扇の細分の定義だけではこの scheme blowup との比較は得られない。[既存の星状細分](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/StarSubdivision.lean)、[扇の射の代数的実現](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/Scheme.lean)、[native blowup charts](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Blowup/AffineCharts.lean)を使用する。

同じ階数 2 格子の完備正則扇の共通の滑らかな細分を構成し、各側からの細分を上の star subdivision の有限列で実現する。各列について構造射、境界の固有変換、全変換例外類の対応を合成し、扇の共通細分と実際の節点 blowup 列を比較する。`Fan.affineSpaceAlgebraicIso` と `Fan.projectiveSpaceToProj` の既存同型は ℂ²・ℙ² の toric model に用いる。

滑らかな射影有理曲面と反標準節点サイクルの対には、有限回の節点 blowup の後でトーリック模型が存在することを証明する。[GHK-Mirror] v3 Proposition 1.3 の最小有理曲面と ruling による証明を、点 blowup・縮約の言葉で構成する。入力として、(−1) 曲線のない射影有理曲面が ℙ² または Hirzebruch 曲面 F_a（a=0 または a≥2）になることを証明する。[Vakil-S] Class 16 と Class 17 §§1–2 の証明で必要な、平方非負の有理曲線の存在、その線形系から得る ruling、ℙ¹ 上の階数 2 ベクトル束の分裂もこの対象に含める。平方非負の有理曲線 C を C²、次に C·H が最小となるように選び、|C| の各元の既約性・滑らかさ、h⁰(O(C))=C²+2≤3、大域生成を証明する。C²=1 では有限次数 1 の ℙ² への射、C²=0 では全ファイバーが ℙ¹ である ℙ¹ への射を得る。

後者を射影束と同定する橋も構成する。ファイバー類 F は F²=0、K·F=−2 と特性合同式から原始的である。実際 F=2G は G²=0、K·G=−1 に反する。単模性により L·F=1 なる線束 L を取り、L((r−1)F)→L(rF)→O_F(1) の完全列と H¹ の次元安定化から各ファイバー近傍で二つの section を持ち上げる。これらの section とその変換から V=f_*L の階数 2 の局所自由性と評価 f*V→L の全射性を証明し、V を既存 `FiniteLocallyFreeSheaf.FixedRank ℙ¹ 2` として取る。射影化の scheme は V の underlying quasi-coherent sheaf に既存 `gradedSymmetricAlgebra` を適用した native `relativeProj` とし、商規約 `Proj_{ℙ¹}(Sym V)` を固定する。構造射と O(1) も既存 `relativeProjToBase`、`relativeProjTwistingSheaf 1` を使う。V が自明な affine 開集合 U ごとに `isPullback_relativeProjCover` で relative Proj の制限を取り、quasi-coherent V に対する `gradedSymmetricAlgebraSectionsEquiv` でその次数付き section 環を Sym Γ(U,V) と同定する。local frame によりこれを二変数多項式環へ移して既存の ℙ¹_U に比較し、`relativeProjIsoProj` はこの affine 基底上で使う。枠変更と affine 開集合の制限との整合には同 section 比較の `_naturality`・`_restrict` を使う。枠変更の次数付き同型は irrelevant ideal を保つので、`relativeProjMap_id`・`relativeProjMap_comp` により貼り合わせる。O(1) の chart 比較と可逆性は `restrictRelativeProjTwistingSheafIso`・`isInvertible_relativeProjTwistingSheaf_gradedSymmetricAlgebra` を継承し、実際の ruling とこの scheme の同型、および評価から得た L と O(1) の対応を証明する。line convention `P(E)=Proj(Sym E∨)` を使う共有 API とは E=V∨ で比較する。新しい射影束 scheme の carrier は作らない。ℙ¹ 上の階数 2 ベクトル束 V の分裂は、H⁰(V(−a))≠0 となる最大の a を取り、section の飽和から O(a) を部分線束として O(b) を商に持つ完全列を作って証明する。最大性と H¹(O(−1))=0 から b≤a を得て、H¹(O(a−b))=0 により列が分裂する。最大の a の存在には V と V∨ の十分大きな twist の大域生成を用いる。

最小有理曲面の分類の入力 h¹(O_Y)=h⁰(O_Y(2K_Y))=0 は、2.2 の比較と pluricanonical section の点 blowup 不変性から得る。[Vakil-S] Class 16 の Pic(Y)=ℤK_Y の場合の排除には、2.3 の単模性と rank Pic(Y)+K_Y²=10 を使う。曲面分類の証明に一般の Noether 公式や位相的 Poincaré 双対性は追加しない。散乱図や鏡の構成は依存しない。

*Needs:* 0.1、2.1–2.4。既存 `Toric.Fan`、`FanHom`、正則双対半群、密トーラス、トーラス作用、`starSubdivisionAlong` と affine/projective space の比較。追加する幾何の範囲は [代数的トーリック曲面の契約](#from-tau-ceti-代数的トーリック曲面) に記す。

### 2.6 平方零の対から境界格子へ

対象対について rank L=10、符号数 (1,9)、x²≡x·δ mod 2 と、1.1 のサイクル交点行列を証明する。nef 性と δ²=0 より δ·Dⱼ=0 を得て、随伴公式と節点の数から各自己交点を求める。δ の原始性から境界類の一次独立性を得る。

節点 blowup 後の被約境界は一般に nef でも平方零でもない。最小対の δ の全変換と被約境界を区別する。全変換の係数は元の成分で 1、新しい節点例外成分で二枝の係数の和である。同じ共通模型からこの全変換を持つ二つの最小化の例外集合が一致し、最小対が一意に同型となることを証明する。

*Needs:* 1.1、2.1–2.5。縮約の降下と正規性。

### Examples

**Checks.** ℙ² で H²=1、χ(O(dH))=(d+1)(d+2)/2。blowup 一回で E²=−1、K² と Picard 階数はそれぞれ 1 減り、1 増える。二枝の重みが 1,1 の節点 blowup の新重みは 2 であり、被約境界の新例外成分との交点は 1 になる。この模型を再び平方零 nef の最小対として扱わない。2.1–2.2 は境界を指定しない Bl_p ℙ² にも適用でき、特異曲線の次数は正規化の Euler 差の相殺で計算する。

### Dependencies

2.0 → 2.1 → 2.2 → 2.3 → 2.4 → 2.5、1.1 と 2.1–2.5 → 2.6。一般のスキーム・スタック・高次元交点理論の全完成を前提にしない。

## Layer 3: 電荷、中心、周期

### 3.1 中心を動かす標識付き表示

固定した滑らかな完備扇 Σ、境界に載る内部中心のラベル、同一成分上の順序から、各 c∈T(A) に実際の blowup 曲面 Ỹ_P(c) を構成する。出発点は Y₀(c)=Ȳ_Σ とし、各段階 j で現在の被約境界の滑らかな点 p_j(c)、その閉点 ideal sheaf I_j(c)、および Y_{j+1}(c)=I_j(c).blowup を記録する。初期境界の開軌道上の点は 1+cᵢzᵛⁱ=0 で指定する。同じ点を繰り返し吹くときは、その境界成分の固有変換上の点を次の中心とする。滑らかな境界点は Spec ℂ からの閉じた section として扱い、`Scheme.Hom.isEffectiveCartier_ker_of_comp_eq_id` にその像が入る smooth relative dimension 1 の開集合を渡す。この閉点 ideal の effective Cartier 性を既存 `Scheme.IdealSheafData.isIso_blowupToBase_iff` に渡し、その境界曲線の blowup 射が同型であることを得る。native `blowupMap` と `ker_blowupMap` による固有変換の比較を通して、この点と元の境界点の対応を得る。後の中心は現在の曲面上の点であり、先行する例外曲線上に載る無限近点もこのデータに含める。中心の輸送には各段階の ideal sheaf の `comap` の等式を用い、支持集合の一致だけを用いない。

異なる中心の操作を交換する補題は、共通の段階の曲面上で二中心が交わらないという仮定の下に述べる。同一点の上の無限近点列ではラベルと相対順序を保持する。これらを有限列の同型と合成の API として 2.2 の点 blowup に接続し、標準の格子と標識の向きを、

    L̃_P=Pic(Ȳ_Σ)⊕⊕ᵢℤEᵢ,
    μ̃_{P,c}:L̃_P ≅ Pic(Ỹ_P(c))

と固定する。μ̃ はトーリック因子の引き戻しと全変換例外類によって決まり、任意の中心依存の標識を選ばない。指定された有限節点縮約は追加データとし、その全例外類の直交補 L_P、包含 j_P:L_P↪L̃_P、引き戻しを用いて Y_P(c)、`μ_{P,c}:L_P≅Pic(Y_P(c))` を得る。固定境界類 dⱼ は実際の [Dⱼ] へ移る。これらは一般の Looijenga 対の表示に対する定義である。

相異なる中心の開集合、指定した有限列の写像が定義される開集合を構成し、その非空性を非自明な Laurent 単項式の非等式から示す。必要な代数性は中心パラメータの写像に課し、曲面と縮約は各 c について構成する。任意基底上の相対縮約やモジュライスタックは要求しない。標識、境界の対応、点ごとの同型が開集合の縮小と表示変更に整合することを証明する。

ある中心で対象対を与える場合は、全中心で境界交点行列と原始性が標識により保存される。境界の台の各成分との交点が非負なら有効境界は nef であるという 2.1 の補題を使い、対象対の条件が保存されることを系として示す。[GHK-M] §2 の toric model と中心の構成を参照する。

**扇の巡回番号と Picard 標識。** 向き付き階数 2 格子 N 上の正則完備な `TauCeti.Toric.Fan` Σ を取る。向きは順序付き整数基底の定める交代形式 det で与える。射線数を r とし、始点となる射線を一つ指定して既存 `Fan.existsUnique_cyclicRayNumbering` で射線を ℤ/rℤ により番号付けする。uⱼ∈N を j 番の原始生成元とすると、隣接射線は共通の錐を持ち、det(uⱼ,uⱼ₊₁)=1 である。内部中心の有限ラベル集合 I、各ラベルを載せる射線の番号 ρ(i)、相異なる射線番号の縮約列 j₁,…,j_ℓ を指定し、ℓ<r とする。

各射線の境界開軌道上に相異なる点を選べば、指定したラベル配置を実現できる。以下の格子比較は、各段の中心が指定境界成分の滑らかな部分にある任意の塔に適用する。射線と中心の標準基底を eⱼ、fᵢ とし、ℤ^r⊕ℤ^I 上の形式 B と関係部分加群 R を

    B(eⱼ,eₖ)=[k=j+1]+[k=j−1]−[k=j]det(uⱼ₋₁,uⱼ₊₁),
    B(eⱼ,fᵢ)=B(fᵢ,eⱼ)=0,  B(fᵢ,fₗ)=−[i=l],
    R={Σⱼ m(uⱼ)eⱼ | m∈Hom(N,ℤ)}

とする。角括弧は条件が成り立てば 1、そうでなければ 0 とする。uⱼ₋₁+uⱼ₊₁=det(uⱼ₋₁,uⱼ₊₁)uⱼ より R は形式の核に入り、既存 `LinearMap.liftQ₂` で B を商へ降ろせる。2.5 のトーリック因子の完全列と 2.2 の直交分解により、商と L̃_P の等長同型を得る。この等長同型は eⱼ を引き戻した境界因子、fᵢ を全変換例外類 Eᵢ へ送る。交点形式は既存の `Fan.classIntersectionNumber_rayBoundaryPoint` と `Fan.rayBoundaryPoint_selfIntersection_smul_add_sum_eq_zero` を巡回番号で読み替え、B の成分式と照合する。境界の固有変換の類は d̃ⱼ=eⱼ−Σ_{ρ(i)=j}fᵢ となる。

各段で指定成分の現在の類を C とし、C²=−1 を仮定する。残る各類 A を A+B(A,C)C に更新する。この類は C と直交し、2.2 の点 blowup 公式により縮約先の境界類の引き戻しを表す。ℓ<r なので各段の直前には二成分以上あり、指定成分は滑らかな有理曲線である。従って 2.4 の節点縮約を適用でき、標的は再び反標準節点サイクルを持つ。指定成分の両側をつないで境界の向きを引き継ぐ。二成分から一成分になる場合には、二つの接点が自己節点の二枝になる。

各段の C は L̃_P 上で縮約の全変換例外類を表し、互いに直交する。更新で加わるのは先行する縮約類の整数倍なので、これらの類が張る部分加群は、縮約対象の元の類 d̃ⱼ が張る部分加群に等しい。その直交補が L_P であり、縮約列が空なら L_P=L̃_P となる。縮約の引き戻しの逆から既定の標識 μ_{P,c}:L_P≅Pic(Y_P(c)) を得る。残存成分は元の番号 0,…,r−1 の順に読み直し、最初の成分を新しい番号 0 とする。更新後の類 dⱼ が同じ番号の実際の境界類 [Dⱼ] へ移ることと、この番号付けが継承した枝の巡回順と両立することを証明する。

**対象対への適用。** δ=Σⱼdⱼ とする。対象対の条件は

    B(δ,δ)=0,  B(δ,dⱼ)≥0 (全 j),  ∃x∈L̃_P, B(δ,x)=1

と同値である。nef 性は有効境界の各成分との交点で判定する。原始性には 2.3 の単模性を使う。L̃_P は L_P と全変換例外類が張る部分加群の直交和なので、x は L_P 成分に置き換えられる。μ_{P,c} による共役で、dⱼ を j↦ηj+k に沿って動かす符号付き等長群を、実際の境界類の等長群と同定する。n=1,2 で同じ境界置換を与える二つの符号も、1.3 の定義どおり群の元に残る。

*Needs:* 0.1、1.3、2.1–2.5。対象対の判定には有理曲面の単模性と有効境界の nef 判定。対象対に対する最小化の比較には 2.6。

### 3.2 電荷核と境界直交格子の同定

一般の順序付きトーリック表示に対し、κ∈M⊥ を補助模型へ引き戻して κ↦(κ·Eᵢ)ᵢ が K への整数加群同型を与えることを証明する。その逆を ι_P:K_P≅M_P⊥⊂L_P と書き、K の形式はこの同型で移す。逆写像は電荷関係 x からトーリック因子類 H_x を構成し、H_x−ΣxᵢEᵢ として得る。節点 blowup の例外直和因子を除いて一般の基の対へ降ろす。標識について `μ_{P,c}∘ι_P` が実際の Picard 群への同じ構成に一致することを証明する。補助模型への写像は ι̃_P=j_P∘ι_P:K_P→L̃_P と定め、節点縮約が空なら j_P=id とする。K と M⊥ には既存の `LinearMap.ker`、`B.orthogonal` を用い、制限形式の非退化性は要求しない。

さらに、rank H=2 を仮定せず、

    L_P/M_P ≅ coker(v*:N*→A*),
    rank K=#I−rank H

を得る。H⊆N の整数基底には Mathlib の `Submodule.smithNormalForm` を使う。この定義は長方形の包含行列と階数落ちを含み、対角係数と source・target の基底を供給する。A/ker(v)≅H は `LinearMap.quotKerEquivRange`、A→H の分裂は H の自由性から `Module.Projective.of_free` と `LinearMap.exists_rightInverse_of_surjective` を適用して得る。分裂 A≃K×H の双対に既存 `Module.dualProdDualEquivDual` を適用し、v* の K* 成分が零、H* 成分が H↪N の双対であることを計算する。Smith の基底で後者の対角係数を読むことで、rank H=2 の場合に [Mˢ:M]=[N:H]=s を得る。全階数の場合の有限商とその濃度には既存 `Submodule.quotientEquivPiZMod`、`Submodule.natAbs_det_basis_change` を使う。正方で行列式非零の行列用の Smith 定理を、電荷写像 v 自体へ適用しない。

電荷の小行列式と指数の比較には `Matrix.minorsIdeal_range_eq_span_det_submatrix` を電荷の長方形行列へ適用し、H の最高次 minor ideal を εᵢⱼ の生成 ideal と同定する。`Submodule.minorsIdeal_eq_span_smithNormalForm_products` を全階数の H↪N に適用すると、その生成元は Smith 係数の積である。これを有限商の濃度と比較して s=gcd|εᵢⱼ| を得る。最大公約数の carrier と基底変更には既存 `Matrix.minorGcd` を用いる。この比較を 5.3 の同じ交換行列からの指数の一致と、補足 C の三電荷の余因子ベクトルの原始性に共用する。

[GHK-C] Theorem 5.5 と証明の式 (5.1) を参照し、有限指数の電荷像を含むトーリック交点計算と、上記の native cokernel との比較を本項の新規目標とする。同論文の unimodular な seed datum の仮定を有限指数の場合へそのまま適用しない。

**対象対への適用。** Picard 階数と扇の射線数から m=12−n、rank K=10−n、rank H=2 を証明する。1.1 と商の同型から s²|n、n≤9、s∈{1,2,3} を得る。境界に沿う巡回順で交点を計算し、ε の全成分を割る整数 d に対し、

    κ²≡−Σxᵢ² (mod d),  κ=ι_P(x)

を証明する。この合同式自体は一般の表示にも成立する。交差項の符号を任意のラベル順へ流用せず、合同式を順序に依存しない結論として取り出す。[補足 B](#b-電荷と有限指数) に導出を記す。

*Needs:* 0.1、2.1–2.2、2.5、3.1。対象対の数値的帰結には 1.1、2.6。トーリック因子の完全列と、Mathlib の有限自由加群・Smith 基底・全階数商の既存 API。新規に必要なのは Picard の商と dual charge cokernel の同型、その torsion と飽和指数の比較である。

### 3.3 中心の整列と有限被覆

有限自由整数加群間の v:A→N に対し、H=im(v)、K=ker(v) と置く。群スキームの核には 0.1 の対角化可能群を用い、H↪N に対する既存 `DiagonalizableGroup.kernelCoordinateIso` を適用する。その座標 Hopf 代数は ℂ[N/H] であり、既存の Hopf 商の点と核の同定、および scheme points の自然な辞書を通じて J=Hom(N/H,ℂ×) を得る。rank H=rank N をこの核の定義に課さない。

本項の比較定理は、中心 c での写像 z↦(cᵢzᵛⁱ) が T(A)→T(K) の c|_K 上のファイバーへ全射で、平行移動の安定化群が上の J であることを述べる。c₁|_K=c₂|_K なら比 c₂/c₁ は H の指標へ降りる。その N への延長には、ℂ× の rootability、加法表記の可除性、既存の Baer 延長性を H↪N に適用する。指標延長のために Smith 標準形や有限指数を仮定しない。延長の選択差を J と同定する。トーラス上の並進は既存 `TauCeti.leftTranslation` と 0.1 の文字 twist の比較で扱い、トーリック表示のトーラス作用へ接続する。各段の中心を保存する場合は、2.2 の中心 ideal と可換式を持つ blowup の自然性を順に適用する。これにより、順序付き中心とその近接中心まで整列し、向きと Picard 標識を保つことを示す。具体的に c₂/c₁=(tᵛⁱ)ᵢ なら、中心方程式 1+cᵢzᵛⁱ=0 により曲面側は t⁻¹ による並進であり、`ev(c₂,t⁻¹z)=ev(c₁,z)` を満たす。

J の積分解には H⊆N に対する既存の部分加群 Smith 標準形を使い、`(ℂ×)^(rank N−rank H)` と有限巡回群の積として記述する。有限性の判定と核座標環の次元には `moduleFinite_kernelCoordinate_iff` と `finrank_kernelCoordinate` を使う。rank H=rank N のときの |J|=[N:H]=s は、有限群 G=Multiplicative(N/H) に Mathlib の `CommGroup.card_monoidHom_of_hasEnoughRootsOfUnity` を適用して得る。必要な roots-of-unity 条件は ℂ の代数閉性と標数零から供給する。有限可換群の双対の個数や根の計数を改めて構成せず、座標環の次元と ℂ 点の個数の比較を記録する。任意の標数で座標環の次元を幾何学的点数と同一視しない。

**有限指数の場合。** ℂ(H)⊂ℂ(N) が有限拡大で、ℂ(H) を点ごとに固定する自己同型群 `Aut_{ℂ(H)}(ℂ(N))` がちょうど J の平行移動であることを証明する。群環拡大には既存 `TauCeti.MonoidAlgebra.basisCosets` を H↪N に適用し、N/H で添字付けられた ℂ[H] 上の基底を得る。有限指数により有限自由加群となり、局所化して分数体の有限性を得る。有限性だけの利用箇所には既存 `mapDomainRingHom_finite_of_finite_quotient` も同じ群環射について適用できる。H の全単項式を固定する自己同型に対し、sN⊂H から各単項式とその像の比 r は rˢ=1 を満たす。`Polynomial.Splits.mem_range_of_isRoot` を ℂ 上で分解する多項式 Xˢ−1 に適用して r が ℂ の定数であることを得る。得られた定数の乗法性から J の文字を回収し、0.1 の `charTwist` と実際の並進に比較する。この体自己同型の分類は群スキームの核の同定とは別の定理であり、任意の有限指数 s に対して述べる。

評価写像 ev_P:𝕋(A)×𝕋(N)→𝕋(A)、ev_P(c,z)=(cᵢzᵛⁱ)ᵢ は、charge map による既存のトーラス射 φ:𝕋(N)→𝕋(A) に `TauCeti.leftTranslationProd` を適用した同型 `(c,z)↦(c·φ(z),z)` の第一成分として定義する。点上の公式と逆写像は既存の product translation の API から得る。z=1 で c を回収するため支配的であり、中心の任意の非空開集合への制限も、整トーラスの非空開埋込みと支配的射の合成により支配的となる。従って中心を変数に残した評価後の有理写像の等号から、独立 X 変数上の等号を回収できる。

各中心 c∈U(ℂ) での有理写像の一致を、この全空間上の等号へ移す比較補題も用意する。二つの評価後の写像が共に正則な非空開 W⊂U×𝕋(N) を取り、その正則な射を各ファイバー W_c へ制限する。W_c が非空なら整トーラスの非空開である。各 c での有理写像の一致を W_c 内の共通稠密開上の等号として読み、`PartialMap.equiv_iff_of_isSeparated_of_le` に source の被約性と target の ℂ 上の分離性を渡して W_c 全体の等号を得る。W の全ての ℂ 点はそのような非空ファイバーに属するので、二つの射は全 ℂ 点で一致する。W は ℂ 上 smooth であり、`Scheme.Hom.denseRange_rationalSections` がこれらの点の稠密性を与える。`AlgebraicGeometry.ext_of_dense_iUnion_range_of_isSeparated` に両射が ℂ 上の射であること、source の被約性、target の ℂ 上の分離性を渡して W 上の等号を得る。その後 0.1 の有理写像比較と評価の支配性を適用する。この比較は各 Ψ_c を相対曲面族の同型へまとめることも、固定 c への関数体準同型を作ることも要求しない。

*Needs:* 0.1、3.1–3.2。対角化可能群の核と点、代数閉体の単元の rootability、可除群への Baer 延長、部分加群の Smith 標準形、整スキームの支配的射と関数体。中心安定化・deck map・評価との比較を本項で供給する。

### 3.4 境界の周期と中心公式

向き付き節点サイクル D には native の節点曲線の正規化・枝・双対グラフを用いる。節点条件は `AtWorstNodalOfRelativeDimensionOne` に接続し、特異部分の blowup が有限全射かつ正則となる定理と、各節点の上に二点ある定理を適用する。`Scheme.dualGraph` の辺と二つの端点に巡回順を指定し、自己ループと平行な二辺を保つ。各正規化成分の線束は既存の ℙ¹ の次数分類で扱う。

本項で構成するのは、この正規化の導手正方形に沿う可逆層の降下と、Pic⁰(D)≅ℂ× の具体的同型である。実際の節点の局所環 R と有限正規化の半局所環 B を取り、R→B の単射性により R を B 内の部分環へ同定する。環の導手正方形そのものには既存 `Subring.conductor` と `Subring.isPullback_quotient_comap_subtype` を使う。導手 c が R と B の共通 ideal であることは既存定理が供給し、`RingHom.quotientPullbackEquiv` により R≅B×_{B/c}(R/c) を得る。新規に接続する節点固有の内容は、実際の導手商を二枝の residue map と比較し、R/c≅ℂ、B/c≅ℂ×ℂ、前者から後者への射が対角射であることを証明することである。これにより `R≅B×_{ℂ×ℂ}ℂ` を得る（[Stacks] Tag 0C46, Lemma 53.19.4）。

導手の局所計算には native `Scheme.Hom.conductor` と `conductor_eq_comap_of_isPullback` を使う。後者は有限射の flat base change に対する比較であり、étale な split node との比較へ適用する。split model の導手・商・Jacobian ideal との関係は既存 `NodeAlgebra` の定理を用い、実際の正規化の枝と対応させる。既約節点の Zariski 局所環に二成分の直積分解を課さない。B の maximal ideals が二枝にちょうど対応することも保持する。

可逆層は B 上で既存の semilocal affine scheme の自由化定理 `FiniteLocallyFreeSheaf.nonempty_iso_free_of_finite_maximalSpectrum` の n=1 により自明化する。順序を固定した二枝の residue map に対し、a∈ℂ× による接着の差写像 b↦res₊(b)−a·res₋(b) の核を構成し、B→ℂ×ℂ の全射性から (a,1) を持ち上げる。この residue map の kernel が B の Jacobson radical に含まれることを渡して、既存 `RingHom.isLocalHom_iff_ker_le_jacobson` により lift u が単元であることを得る。新規に証明する核の等式は uR との一致であり、これから階数 1 の局所自由性が従う。制限とこの構成が互いに逆で、線束間の射も降りることを確認して大域化する。導手の環 pullback と半局所環上の線束の自明化は既存定理を適用し、可逆層の降下・その自然性・接着比の計算を独立した再利用可能な結果として供給する。

多重次数零の場合は正規化上で各線束が自明なので、接着定数の積が局所自明化の変更に不変であることから同型を得る。向きを逆転すると積は逆数になり、n=1 の二枝と n=2 の二節点にも同じ定義を使う。[GHK-M] Lemmas 2.1、2.5、および節点の局所記述について [Stacks] Tag 0C46 を参照する。

Pic⁰(D)≅ℂ× の上の同型を λ_D と書く。一般のトーリック表示の周期を、標識と 3.2 の逆同型の向きを固定して

    a_{P,c}(x)=λ_D(restriction(μ_{P,c}(ι_P(x))))  (x∈K_P)

と定義する。線束の tensor と制限により指標であり、節点 blowup の引き戻しに不変であることを証明する。向きの符号 η を持つ対の同型 Ψ:Y₀→Y₁ に対して、実際の境界直交類での自然性は a₁(x)=a₀(Ψ*x)^η となる。

同じ表示の二中心 c,d に対し、接着定数の比を計算して

    a_{P,c}(x)/a_{P,d}(x)=((c/d)^x)^θ

を証明する。θ∈{±1} は接着比と指標の規約から一度定まる。固定した基準中心 d によって `χ_P(x)=a_{P,d}(x)/(d^x)^θ` と置くと、比の公式から基準中心に依存しない指標となり、`a_{P,c}=χ_P·(c|_K)^θ` を得る。χ_P=1 は仮定しない。K は A の直和因子なので中心から周期への写像は全射である。[GHK-M] Proposition 2.9、Corollary 2.10、[GHK-C] Theorem 5.5 の必要な式に対応する。

内部 (−2) 曲線 C があれば [C]∈K、[C]²=−2、a_c([C])=1 であることを証明する。逆向きの主張や、平方 −2 の全類と変形で実現する根との同一視は仮定しない。

*Needs:* 2.1–2.2、3.1–3.3。native 節点曲線の正規化・枝・双対グラフ、ℙ¹ の線束分類、線束の制限。本項で節点サイクルの可逆層の降下を供給し、K の直和因子性には既存の原始部分加群の分裂を使う。

### 3.5 根を避ける周期の存在

任意の有限自由整数加群が ℂ× への単射指標を持ち、原始元 δ が指定された場合には a(δ)=1/2 とできることを証明する。原始元の基底への延長には既存 `TauCeti.IsPrimitive.exists_basis` と `Basis.reindex` を使い、δ,β₁,…,β_r を得る。相異なる奇素数 pᵢ を選び、δ↦1/2、βᵢ↦pᵢ という値から `TauCeti.freeAbelianCharEquiv` と `Basis.repr` で指標を構成する。

単射性はまず ℚ× で証明する。既存の `padicValRat.mul`、`padicValRat.zpow` と素数の valuation 計算を適用すると、2 の valuation は δ の係数の負、pᵢ の valuation は βᵢ の係数である。したがって値 1 を持つ元の全係数は零である。ℚ↪ℂ の単射で ℂ× に移せば、全ての非零元 x に対し a(x)≠1 を得る。素因数分解の一意性、原始元の基底延長、自由加群の基底値からの指標構成を別途再実装しない。本項の新規定理は、これらを合成した単射指標の存在と a(δ)=1/2 の正規化であり、δ の特性元性や平方零はこの定理の仮定にしない。

対象対への適用では δ は K の形式の根基に属するため、平方 −2 の α とその全ての δ 平行移動も平方 −2 であり非零である。従ってこの a はそれらの全てで値 1 を避ける。3.4 の全射性で a を中心の周期として実現する。δ を固定する格子等長変換 g に対して a∘g、およびその逆数も根を避ける。全射性の証明にはこの一点の存在で足りる。全ての根を避ける集合が一つの Zariski 開集合であるとは主張しない。

*Needs:* 3.2–3.4。Tau Ceti の原始元の基底延長と自由アーベル群の指標、Mathlib の素数の無限性と有理数の `padicValRat`。対象対への適用だけで平方 −2 と根基の条件を使う。

### Examples

**Checks.** 内部中心が零のトーリック対では A=K=0、H=0、J=T(N) となるため、一般の J を有限群と定義できない。H=⟨(1,1),(−1,1)⟩⊂ℤ² では s=2、J の非自明元は (z₁,z₂)↦(−z₁,−z₂) である。z₁z₂ と z₁⁻¹z₂ は固定されるが z₁ は固定されない。a(2δ−β₁)=1/(4p₁)≠1 であり、χ_P≠1 の場合の中心は a/χ_P を用いて求める。ℙ² の扇で内部中心も縮約もなければ、商で三つの eⱼ は同じ直線類となり、その平方は 1、全境界の平方は 9 である。8.3 の中心数 (2,3,6) では、縮約前の平方は −1,−2,−5 である。d̃₀ の縮約後は二成分の交点が 2、d̃₁+d̃₀ の平方が −1 となる。最後に残る d̃₂+2d̃₁+3d̃₀ は平方 0 で、第三の射線上の fᵢ との交点は 1 である。逆順では最初の成分の平方が −2 なので縮約列の条件を満たさない。

### Dependencies

3.1 → 3.2 → 3.3 → 3.4 → 3.5。基礎は Layers 0–2。有限被覆の誤差 J と中心周期の定数 χ_P を保存する。3.1 の番号付き Picard 標識は 7.2 で用いる。

## Layer 4: 周期による再構成と格子作用の実現

### 4.1 負曲線、錐、有効類の保存

閉曲線錐と双対錐には Mathlib の `PointedCone`・`ProperCone` を使う。2.4 の実 Picard 空間 V と B_ℝ は、2.3 の有限自由な Picard 群と完全交点形式の ℝ への係数拡大を用いる。標準の有限次元位相、`LinearMap.toContinuousBilinearMap`、完全双対との比較から `B_ℝ.IsContPerfPair` を供給する。既約曲線類の集合 S に対する `PointedCone.hull ℝ S` の閉包を閉曲線錐とし、閉性を付して `ProperCone ℝ V` として扱う。nef 錐はその `ProperCone.dual B_ℝ` と 2.1 の全曲線との非負交点による定義が一致することを示す。双対を二度取る等式には `ProperCone.dual_flip_dual` を使う。この実 Picard の構成に有理性を用いるのは 2.3 の有限自由性・非退化性のためであり、一般の曲面の Picard 群に同じ性質を仮定しない。

一般の Looijenga 対について、境界以外の負の既約曲線は、D と交点 1 の (−1) 曲線または内部 (−2) 曲線であることを算術随伴から証明する。豊富類 h を固定し、e²=e·K_Y=−1 なる整数類について、e が有効であることと e·h>0 が同値であることを示す。e·h>0 なら χ(O_Y(e))=1 かつ (K_Y−e)·h<0 であり、2.3 の有効性を使う。

E_h={e:e²=e·K_Y=−1, e·h>0} と実際の内部 (−2) 曲線類の集合 Δ を用い、nef 錐を、正錐 C⁺ 内で境界類・E_h・Δ との非負交点を課した集合の閉包として記述する。[GHK-M] Lemmas 2.13–2.15 の証明では、負曲線の分類と正錐の有理点の十分大きな整数倍の有効性を幾何的入力として証明し、閉包・双対性には上の既存 API を適用する。内部 (−2) 曲線のない二対の境界を対応させる等長変換が、一組の h と gh をともに豊富にするなら、nef 錐と豊富錐全体を対応させることを得る。等長同型による像の比較にはその実線形同型と連続な逆を用いる。`ProperCone.map` は一般には像の閉包なので、単なる像と同一視する際にはこの同型による閉性を渡す。

**nef 平方零の境界への適用。** 二対が内部 (−2) 曲線を持たず、δ が nef で δ²=0 とする。境界類を対応させる等長変換は有効類の半群と豊富錐を自動的に対応させる。境界外の負曲線の像については e²=−1、e·δ=1 から χ(O_Y(e))=1 と (K_Y−e)·δ=−1 を得て、2.3 の有効性を使う。非負自己交点の曲線類の像には、正錐の閉包と Riemann–Roch から同じ有効性を適用する。逆写像にも適用すると有効類の半群が対応する。負の既約曲線の有効類としての不可分性から実際の曲線類が対応し、Nakai–Moishezon で豊富類が対応する。4.4 の nef 平方零の場合はこの比較を用いる。この錐保存自体には δ の原始性は不要である。

*Needs:* 2.1–2.4。正錐、有効類、曲線の交点、Mathlib の閉凸錐・連続完全対・双対錐。周期の一致は本項の仮定ではない。

### 4.2 節点補助模型と例外曲線配置

内部 (−2) 曲線のない二つの Looijenga 対と、境界類および豊富錐を対応させる等長変換 g を取る。g を、対応する節点 blowup の Picard 群へ、全変換上では g、新しい例外類上では対応する例外類を送る写像として延長する。1 組の豊富類 h と gh に対して Nπ*h−E とその像がともに豊富となる N を選び、この延長が補助模型の豊富錐を対応させることを証明する。

補助模型では、固定した正錐成分、e²=e·K=−1 かつ選んだ豊富類 h と正に交わる例外類、境界類、実際の内部 (−2) 曲線類から nef 錐を記述する。具体的には、正錐 C⁺ 内でこれら全てとの非負交点を課した集合の閉包が nef 錐となる。既に選んだ h と gh がともに豊富であることにより、数値的例外類の集合も対応する。[GHK-M] Lemmas 2.13–2.15 と Lemma 4.5 の特殊形として証明する。節点 blowup は内部 (−2) 曲線を新設しない。

豊富錐の対応から 4.1 の native 双対性で閉曲線錐を対応させる。極線は非零ベクトルが生成する `PointedCone.hull` が閉曲線錐の `PointedCone.IsFaceOf` となる条件で表す。2.4 の負曲線の極線性を入力にし、`PointedCone.IsFaceOf.map_equiv` で面を輸送する。移された例外類の有効分解には `IsFaceOf.mem_of_sum_smul_mem` を適用し、正の重複度を持つ各成分が同じ半直線上にあることを得る。移された類を e、各成分類を cᵢ=rᵢe（rᵢ>0）とすると、e²=−1 から rᵢ=−B(cᵢ,e) は正の整数である。有効分解 e=Σmᵢcᵢ と e の交点から 1=Σmᵢrᵢ を得るので、成分は一つでその重複度も 1 である。負曲線の有効代表の一意性と非負交点から、一方の互いに素な内部 (−1) 曲線配置が他方の同じ配置へ移る。面の輸送を独自に作り直さず、負曲線の極線性・整数性から既約代表を得る幾何的接続を本項の義務とする。nef な δ を補助模型で再利用しない。

*Needs:* 2.1–2.4、4.1。例外曲線の数値的判定、曲面の錐と縮約、Mathlib の `PointedCone.IsFaceOf`。証明の構成は [GHK-M] Theorem 4.7 の証明冒頭に対応する。

### 4.3 トーリック模型と中心の再構成

有理反標準サイクル対に q(Y,D)=rank Pic(Y)+2−#D を定める。内部 blowup で q が 1 増え、節点 blowup で不変となることを証明する。2.5 の模型存在から q≥0 と、q=0 なら対がトーリックであることを示す。後者では内部中心数が零の模型から、扇の逆細分で節点縮約を降ろす。

トーリック対の向き付き境界自己交点列から扇を整数線形同型まで復元する。隣接射線 `u_{j−1},uⱼ,u_{j+1}` に対する `u_{j−1}+(Dⱼ²)uⱼ+u_{j+1}=0` を用いる。同じトーリック組合せ型の二つの blowup 表示の周期が一致するとき、中心は同時トーラス平行移動まで一致し、標識と境界に適合する対の同型が存在することを証明する。[GHK-M] Remark 2.4、Proposition 2.9、Corollary 2.10 の内容を、この有限表示で構成する。

*Needs:* 2.2、2.5、3.2–3.4。扇の漸化式、指標の完全列、曲線の収縮。

### 4.4 根のない対の Torelli 定理

同じ境界成分数 n の二つの Looijenga 対 (Y₀,D₀)、(Y₁,D₁) が内部 (−2) 曲線を持たないとする。η∈{±1} と境界の順像 j を指定し、格子等長変換 g:Pic(Y₁)→Pic(Y₀) が次を満たすと仮定する。

    g[D₁,l]=[D₀,η(l−j)],
    g(Ample(Y₁))=Ample(Y₀),
    a₁(x)=a₀(gx)^η  (x∈D₁⊥).

引き戻し g、境界順像 j、向き η を持つ対の同型 ψ:Y₀→Y₁ が存在することを証明する。n≤2 の節点・枝の向きも指定する。η=1 では 4.2–4.3 により片側の節点補助模型と内部例外配置を他方へ移して収縮し、q=0 からトーリック性を得て、扇と周期から中心を再構成する。η=−1 は一方の境界の向きを反転して η=1 に帰着する。

標識付き変形型の一致を別の仮定として要求しない。[GHK-M] Theorem 1.8 の証明の generic な部分をこの構成で実装し、その結論を構造のフィールドとして受け取らない。同型自身の一意性は主張せず、差の群は 4.5 で扱う。

**対象対への系。** 原始的 nef 平方零の対象対では 4.1 が豊富錐の対応を与えるため、境界対応と周期の等式だけを入力にして同じ同型を得る。一般版とこの系を別定理として公開する。[補足 D](#d-必要な周期再構成) に証明経路を記す。

*Needs:* 3.4、4.1–4.3。向きと境界番号の対応。一般の根壁付き Torelli は含めない。

### 4.5 Picard 自明自己同型

一般の Looijenga 対に、3.1 の順序付きトーリック表示を指定する。中心の重複と近接点を許す。向きを保ち、**各境界成分を固定し**、Picard 群に自明に作用する自己同型の群は J=Hom(N/H,ℂ×) に同型であることを証明する。rank H=2 は仮定せず、J の有限性はその追加条件下の系とする。

節点・枝の対応から 2.2 の同型の lift で節点 blowup へ持ち上げ、指定された内部 blowup 列を**逆順に**降ろす。現在の最後の例外曲線 E は (−1) 曲線であり、その類の唯一の有効代表なので保存される。2.2 の既にある blowup に沿う下降を使い、π* の単射性から下降後も Picard 作用が自明であることを得て反復する。近接点がある場合の以前の全変換例外類を、現在の既約 (−1) 曲線とみなす必要はない。

トーリック面まで降ろすと、境界成分を各々保つ自己同型のトーラス上の単項式線形部分は全原始射線を固定して恒等となり、残りは平行移動である。中心の保存が H 上の指標の自明性を与える。逆に J の平行移動は内部中心を置いた境界成分を点ごとに固定する。2.2 の中心 ideal を保存する同型の lift を順に適用し、近接中心は対応する境界の固有変換上の唯一の点として固定されることを帰納的に示す。境界因子がトーリック面の Picard 群を生成することと 2.2 の Picard 分解から、これらの lift の Picard 作用は自明である。最後に節点操作を降ろす。lift・下降の一意性と合成則から両対応が互いに逆な群準同型であることを得る。[GHK-M] Proposition 2.6 の toric model による証明に対応する。

対象対では境界類の一次独立性から、Picard 自明な自己同型は各境界成分を固定する。従って上の条件のうち成分固定を落とした系を得る。一般の対ではこの系は成立しない。例えば ℙ¹×ℙ¹ のトーラスの反転は向きと Picard 群を保つが、対向する境界成分を交換する。

*Needs:* 2.2、2.5、3.1–3.3。対象対への系には 1.1、2.6。

### Examples

**Checks.** e²=−1、eδ=1 では χ(O(e))=1、δ·(K−e)=−1 で、e の有効性が従う。内部 (−2) 曲線を持つ場合にはその類の反射が境界・δ を固定しても有効類を負に移すので、4.1 の仮定を外せない。J の非自明元は Picard 作用を変えず、同型自身の一意性を否定する。

同じ滑らかな境界点の上を二度吹いた表示にも 4.5 を適用する。最後の E₂ は (−1) 曲線だが、最初の例外曲線の固有変換 E₁−E₂ は (−2) 曲線である。下降は E₂ の縮約後に最初の例外曲線へ適用するので、内部 (−2) 曲線の不存在や中心の相異性を必要としない。

### Dependencies

4.1 の一般の錐記述 → 4.2、2.5 と 3.2–3.4 → 4.3、4.2–4.3 → 4.4。4.1 の平方零の系は 4.4 の対象対への適用で使う。4.5 は 4.4 の存在定理を必要としない。曲面の自己同型群とクラスター群の同定はこのレイヤーでは行わない。

## Layer 5: 表示変更とクラスター変異

### 5.1 指定された双有理写像の因数分解

一つの Looijenga 対からの指定済みの二つのトーリック収縮 p,p′ を取る。双有理写像 p′p⁻¹ を、トーリック blowup/down、Hirzebruch 曲面の基本変換、トーリック同型の有限列に分解する。各部分合成と p の合成は、始域のある節点 blowup 上で正則であり、有限個の全部分合成に共通の節点細分を取れることを証明する。[HKL] Appendix, Lutz Theorem 8.4 の主張をこの特殊形で実装する。

指定標的を座標平面に帰着し、共通解消の二射 h:Z→X、g:Z→ℙ² と直線類 H=g*O(1) を保持する。H=h*L−ΣmⱼEⱼ と全変換例外類で展開すると mⱼ=H·Eⱼ は近接中心を含む多重度である。副次数を **M=(−K_X)·L−3** と定義する。K_Z·H=−3 から M=Σmⱼ≥0 が従う。平面では (2d,M)、線織面では (3b,M) を辞書式に比較する。基本変換における M の差は両端の模型上の交点で計算できる。

Fₖ の不変ファイバーにだけ高い中心がある場合、正切断 S の固有変換は指定標的で一点または座標直線へ写る。従って H·S̃ は 0 または 1。正切断上の上位 k 個の位数を祖先優先で順次選び、そこで基本変換する。不足分は節点で補う。元の一つまたは二つの高い中心だけを標識し、必要なときは収縮したファイバーの逆中心に標識を移す。切断に残る次数の評価により、準備後の F₀ では標識における一中心または二中心のリンクで帰納指標の第一成分が必ず下がる。k=0 の場合にも同じ評価を使う。[選択・減少不等式・全分岐での終端と具体例](PositiveSectionDescent.md)

各部分合成と p の合成を共通の節点細分上の実際の射として運び、最終平面同型の後に標的のトーリックな準備を逆にたどって指定射 p′ を回収する。[補足 E](#e-因数分解から語への橋渡し) · [実装の移行手順と参考 Lean](SarkisovMigration.md)

*Needs:* 2.1–2.2、2.4–2.5。点 blowup の Picard 分解、曲線の固有変換と射影公式、節点細分、ruling と基本変換、対数二形式の極因子。

### 5.2 正則な対数的射と指定された表示変更

**正則な射の正規化。** Looijenga 対 (Z,D_Z)、滑らかな完備トーリック対 (T,D_T)、双有理射 h:Z→T を取る。トーリック対数二形式 ω_T が div(h*ω_T)=−D_Z を満たすとき、トーリック節点細分 r:S→T と ordered internal blowup の逆列 π:Z→S を構成して h=r∘π を得る。中心、ラベル、近接中心の順序を出力に含める。この定理に平方零・根の不存在・クラスター語は不要である。

点 blowup への分解と二形式の位数から境界外の中心を除く。境界の滑らかな点では新例外曲線の位数は 0 であり、新境界は元の境界の固有変換となる。節点では二枝の単純極から新例外曲線の位数が −1 となり、新境界は固有変換と例外曲線の和となる。この二種類の局所計算を 2.2 の scheme blowup と固有変換について証明し、自己節点では正規化の二枝を保持する。節点 blowup を、それ以前の異なる滑らかな境界点の操作と交換して先へ移す際には、現在の曲面上の中心とその ideal sheaf の対応を追跡する。新しい節点例外成分上の中心はその節点操作の後に残し、無限近点の順序を保つ。

S の境界射線 u_C は各境界成分 C における ord_C(h*zʰ)=det(h,u_C) と巡回順から回収する。2.5 の star subdivision と点 blowup の比較を使って r を native `FanHom.algebraicMap` と同定し、各段階の構造射の可換性を合成して、元の指定された射 h について h=r∘π を証明する。

**指定された基本変換の比較。** h:Z→T、h′:Z→T′ が上の条件を満たし、指定された非トーリック基本変換 φ:T⇢T′ に対して h′=φ∘h が有理写像として成立するとする。共通のトーリック細分の後で、φ の中心 p が source の内部中心列に現れることを示す。現れなければ h は p 近傍で同型となり、φ∘h の基点が残ることに反する。

p 上の最初の中心 k を相異なる点の操作との交換で取り出し、基本変換後の残る中心を共通解消で運ぶ。同一点の近接中心の相対順序を保ち、正規化前後の射の三角形と、φ を含む有理写像の四角形が可換であることを出力する。反対境界の同じ ruling fibre 上に中心がある場合は、共通解消上の ordered な近接中心列として扱う。トーリック基本変換は節点操作として別に扱い、内部中心の存在を要求しない。

5.1 の各正則な部分合成へこの二定理を適用し、指定された同型そのものを表示変更へ移す。各表示変更から X 変異と Picard 引き戻しへの比較は 5.4 の局所定理で与える。[補足 E](#e-因数分解から語への橋渡し) に証明を記す。

*Needs:* 正則射の正規化と単一の基本変換の比較には 2.1–2.2、2.5、3.1 を使う。指定された全経路への適用に 5.1 を使う。

### 5.3 終端ラベル同定の整数性

対象対の二つのトーリック表示の電荷列が、ラベル同定後に同じ交換行列を持つとする。rank H=2 のもとでの 0.4 の ker(v)=ker(ε) と、既存 `LinearMap.quotKerEquivRange` を用いて H₁≅H₂ を構成し、各ラベルの電荷を対応させる公式を公開する。3.2 の minor ideal と指数の比較により両表示の s も一致する。次にこの同型が全格子 N₁≅N₂ へ延長することを証明する。

s=1 は H=N による。s=p=2,3 では H/pH の一次元部分空間を native `Projectivization` と `Projectivization.equivSubmodule` で扱い、点数 p+1 を `Projectivization.card_of_finrank_two` から得る。その上で、直線 pN/pH が全電荷の剰余が避ける唯一の直線となることを証明する。p=2 は電荷が少なくとも二点を占めることによる。p=3 は n=9、m=3、K=ℤδ と 3.2 の合同式から、三つの電荷が相異なる三点を占めることを示す。残る直線の逆像が pN を復元する。[補足 C](#c-終端ラベル同定の延長) に有限計算を記す。

この整数同型を扇の共通細分へ延ばし、相異なる中心の順序を合わせ、2.6 の最小化の一意性から最小対の同型を得る。任意の有限指数 H⊂N でこの延長が成立するとは主張しない。

*Needs:* 0.4、1.1、2.5–2.6、3.1–3.2。原始電荷、s²|n、m=12−n。

### 5.4 一変異の中心・有理写像・全 Picard 作用

一般の順序付きトーリック表示と内部中心 k を取る。必要な節点細分の後で、扇 Σ が v=vₖ と −v の両射線を持つとする。

    tₖ(u)=u+[det(u,v)]₊v,  Σ′=tₖ(Σ),
    v′ₖ=−vₖ,  v′ᵢ=tₖ(vᵢ) (i≠k),
    Cₖ(c)ₖ=cₖ⁻¹,  Cₖ(c)ᵢ=cᵢcₖ^[εᵢₖ]₊ (i≠k).

tₖ は二つの半平面で行列式 1 の整数線形写像となる。各錐を対応する線形写像で移して native `Fan.ofCones` の条件を検証し、Σ′ が正則な完備扇であることを証明する。tₖ 全体を一つの格子線形写像や `FanHom` として扱わない。新表示 P′ の順序は、k を元の射線の列から除き、反対射線の列の先頭へ入れ、他の列の順序を輸送して定める。近接中心を含む場合、k は元の点の上の最初の中心とする。Cₖ は 0.4 の格子同型 Bₖ が誘導する native `DiagonalizableGroup.groupSchemeMap` の点上公式として定義する。従って中心トーラスの単項式同型となる。二度の変異で Cₖ 自体が固定した枠の恒等になるとは主張しない。X 写像の対合性と、電荷格子の枠の変更を区別する。

zᵛ の ruling のファイバー類を `F=Σ_{det(u,v)>0}det(u,v)[D̄_u]` とする。トーリック境界類を全引き戻し、Eᵢ を全変換例外類として、整数写像 Iₖ:L̃_P′→L̃_P を次の生成元公式で構成する。

    Iₖ(E′ₖ)=F−Eₖ,  Iₖ(E′ᵢ)=Eᵢ (i≠k),
    Iₖ([D̄′_{tₖ(u)}])=[D̄_u]               (u≠v,−v),
    Iₖ([D̄′_v])=[D̄_v]−Eₖ,
    Iₖ([D̄′_{−v}])=[D̄_{−v}]+F−Eₖ.

主因子の関係を保つことと、共通 blowup 上の引き戻しによる等長同型であることを証明する。境界の固有変換 `[D̂_u]=[D̄_u]−Σ_{vᵢ=u}Eᵢ` は対応する固有変換へ送られる。全 Picard 作用を K 上の作用だけの定義に置き換えない。

同一射線上の中心が相異なり、vᵢ=−vₖ なら cᵢcₖ≠1 を満たす非空開集合 Uₖ 上で、中心を blowup して ruling のファイバーを縮約する。2.2 の点 blowup の二 chart と 2.5 のトーリック chart を使い、基本変換の式が正則な射となること、重なりで一致すること、残る中心が Cₖ(c) で指定された閉点 ideal に移ることを証明する。標的の blowup への持ち上げは、構成済みの正則な射 g に対して、構造層内の延長 ideal `(I.comap g).IsEffectiveCartier` を示し、既存 `Scheme.IdealSheafData.blowupLift` と `blowupLift_blowupToBase` を順に適用して得る。この Cartier 性は chart 計算で確認する。中心を保存する同型 e:X≅Y と `I.comap e.hom=J` から得る場合には、g を始域の blowup 射と e の合成とし、`I.comap g=J.comap J.blowupToBase` に既存の exceptional ideal の Cartier 性を適用する。条件を満たすのはこの延長 ideal であり、曲面上の閉点 ideal 自体ではない。[blowup の普遍性](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Blowup/UniversalProperty.lean)を用いる。

逆向きにも同じ手順で正則な射を構成する。構成した射はすべて ℂ 上の射とする。共通の稠密開部分で有理式が互いに逆であることを、開部分上の射の等号として証明する。二つの合成が恒等射に等しいことは、始域の被約性、標的の ℂ 上の分離性、稠密開埋込みの dominant 性を既存 `AlgebraicGeometry.ext_of_isDominant_of_isSeparated'` に渡して得る。これにより向きを保つ実際の対の同型 Ψₖ,c:Ỹ_P(c)≅Ỹ_P′(Cₖ(c)) を得る。[稠密部分上の一致による射の等号](https://github.com/leanprover-community/mathlib4/blob/31ce06eaadf4a200c0e1407c5f10953cf606b8f8/Mathlib/AlgebraicGeometry/Morphisms/Separated.lean)を使用する。この同型について、以下を同時に証明する。

    Ψₖ,c* z′ʰ = zʰ(1+cₖzᵛᵏ)^(−det(h,vₖ)),
    μ̃_{P,c} ∘ Iₖ = Ψₖ,c* ∘ μ̃_{P′,Cₖ(c)},
    ev_P′(Cₖ(c),Ψₖ,c(z)) = F_μₖ(ev_P(c,z)),
    Iₖ ∘ ι̃_P′ = ι̃_P ∘ (Bₖ|_K).

評価式は共通の有理定義域で読む。最後の式は 3.2 の補助模型上の境界直交類への同定であり、例外類との交点を計算して導く。Picard 作用が c に依存しないことは二番目の式の帰結である。近接中心を含む 5.2 の比較では同じ共通解消の計算を ordered な列に適用し、一般位置の公式との一致を証明する。

対象対への節点縮約が指定されている場合は、境界固有変換と元の δ の全変換を保存することから Ψₖ,c と Iₖ を最小対へ降ろす。誘導された L_P′→L_P の写像については、同じ比較を ι_P′ と ι_P で述べる。[GHK-C] (1.4)、Lemma 3.2、Theorem 5.6 の証明が局所計算の参照先であり、全生成元の比較は [補足 E](#e-因数分解から語への橋渡し) で展開する。

*Needs:* 0.2、0.4、2.2、2.5、3.1–3.3。最小対への降下には 2.6。指定写像との対応には 5.2。

### 5.5 語の実現、終端同定、境界付値

語の帰納法には 0.2 の `Quiver.Path` を用い、各辺に付随する中心写像・対の同型・Picard 引き戻しの比較を順に合成する。変異だけの部分列については native `YSeed.mutationWord` の解釈と一致することを保持し、恒等語・連結・逆順の形式的性質を再構成しない。

5.4 の局所実現、ラベル置換、トーラスの枠変更、節点細分を合成する。対象対の表示を始点とする任意の有限の反転なしの語について、中心の非空開集合、単項式中心写像、各中心での対の同型、中心に依存しない全 Picard 同型を得る。合成は中心写像について実行順、Picard 引き戻しについて逆順となり、標識と評価の二つの可換式を保つことを証明する。

各段の非衝突条件を可逆な単項式中心写像で引き戻し、有限個の非空開集合の共通部分として定義域を作る。ループの終端では 5.3 の整数格子同定、扇の共通細分、相異なる中心の順序変更、2.6 の最小化の一意性を用いて元の表示と比較する。これにより反転なしのループは一般の中心で向きを保つ最小対の同型として実現する。

0.5 を D₀ の初期付値 bᵢ=det(vᵢ,u₀) に適用すると、終列がその順像 Dⱼ の付値を与えることを証明する。bₖ=0 の場合には zᵛᵏ の境界開軌道への制限が非定数であるため ord(1+Xₖ)=0 となる。rank H=2 により最小境界の相異なる射線の付値列は異なり、D₀ の順像を回収できる。

*Needs:* 0.2、0.4–0.5、2.2、2.5–2.6、3.1–3.3、5.3–5.4。

### Examples

**Checks.** ε₁₂=1 で同じ μ₁ を二度行うと X 写像は恒等だが、固定した中心の枠では c₂ は c₂/c₁ に移る。中心写像だけに対合性を要求すると誤る。ε の全成分が 3 の倍数で m=3 の場合、原始核ベクトル x は Σxᵢ²=0 mod 3 を満たす。非零平方は 1 なので三座標が全て非零であり、二座標だけが非零の候補は和 2 となって除外される。重複中心を逆順に交換する条件 cᵢ≠cⱼ を落とすと、後の中心が前の例外曲線上の近接点である場合に同じ blowup 配置を表さなくなる。

### Dependencies

2.2 の極の局所計算 → 5.1 と 5.2 の正規化、5.1 → 5.2 の全経路への適用、0.4 と 1.1 と 3.2 → 5.3、5.2 → 5.4、5.3–5.4 → 5.5。模型変更の存在からクラスター語への変換には、正則な部分合成と終端格子の整数性を両方使う。

## Layer 6: 向きを保つ群の決定

### 6.0 幾何的実現の比較と合成

一般の二つの固定表示 P₀,P₁ に対し、X 双有理写像 F:𝕋(A₀)⇢𝕋(A₁) の幾何的実現を次の具体的データと等式で定める。表示には電荷ラベル、標準の Picard 標識、周期の向きの規約を含める。

- 非空 Zariski 開集合 U⊂𝕋(A₀) と、U 上で正則かつ支配的な中心写像 C:U→𝕋(A₁)。
- 各 c∈U(ℂ) での実際の対の同型 Ψ_c:Y_P₀(c)≅Y_P₁(C(c))。
- 中心に依存しない格子等長同型 I:L_P₁→L_P₀、指定した境界成分対応 β、節点・枝も含む向き η。各 Ψ_c は同じ β と η を実現する。
- 標識と Picard 引き戻し、評価と X 写像の可換性。

    μ_{P₀,c}∘I = Ψ_c*∘μ_{P₁,C(c)},
    F(ev_P₀(c,z)) = ev_P₁(C(c),Ψ_c(z)).

二番目の式は共通の有理定義域上の等式である。これは主同型を仮定する構造ではなく、スキーム同型と既存の引き戻しの整合性を束ねたものである。5.4–5.5 は該当する実現を構成する。

**同じ X 写像の比較。** 同じ P₀,P₁ の二つの実現で F₁=F₂ とし、終域の rank H₁=2 を仮定する。共通開集合の中心で終域の K 指標が一致するため、3.3 のトーラス平行移動で中心を整列できる。差の同型は H₁ の全指標を固定し、有限被覆の計算により J₁ に属する。従って I、β、η が全て一致する。この方向では有限指数の仮定を保持する。

**同じ格子・境界作用の比較。** 同じ P₀,P₁ の二つの実現で I、β、η が一致するとする。3.4 の周期の自然性から終端の K 指標が一致し、中心整列後の差は順序付き近接中心を許す 4.5 の核の定理により J₁ に属する。各中心で評価後の有理写像が一致することを、3.3 の稠密な ℂ 点による比較補題で共通正則域上の等号へ移し、評価写像の支配性から F₁=F₂ を得る。この方向に J₁ の有限性は不要である。実現の構成時に必要な非衝突開集合は保持するが、自己同型核を適用するために全中心が相異なると仮定する必要はない。η を条件から落とさない。対象対では β は I から回収できるが、n≤2 では η は別のデータである。

**基本 API。** 実現のデータ型、開集合への制限、恒等実現、実現の合成は 0.1 と 3.1–3.3 から定める。これらの構成は上の二つの比較定理に先立って使え、5.4–5.5 の入力に循環依存を生じない。二つの実現の合成の定義域は U₀₁∩C₀₁⁻¹(U₁₂) であり、中心写像の支配性により非空となる。合成式は C₀₂=C₁₂∘C₀₁、I₀₂=I₀₁∘I₁₂、β₀₂=β₁₂∘β₀₁、η₀₂=η₀₁η₁₂ である。中心写像が双有理なら開集合を縮小して逆実現も構成する。選択の比較とこれらの操作の整合性を証明する。

*Needs:* 0.1、3.1–3.4、4.5。語についての実現の構成は 5.4–5.5 から供給されるが、比較定理自体は語を仮定しない。証明の有限被覆と自己同型核の計算は [補足 F](#f-向きを保つ群の全単射)。

### 6.1 有理写像から Picard 作用へ

反転なしのループの 5.5 による実現から、中心に依存しない g∈G⁺ を取る。6.0 の同じ X 写像の比較により、g は有理写像だけで決まり、終端格子の同定・共通細分・中心整列の選択にも依存しない。

6.0 の合成式から `g_{F∘F′}=g_{F′}g_F` を得て、`Γᵒᵖ →* G⁺` を構成し、選択独立性と反変的合成公式をその評価定理として公開する。0.4 と 5.4 の局所比較により、語の単項式作用は ι_P を通した g|_K に一致する。

*Needs:* 0.3–0.4、1.3、3.2、5.3–5.5、6.0。

### 6.2 単射性

g_F=id とする。境界類の一次独立性から境界対応も恒等であり、反転なしなので η=1 である。恒等実現と比較する 6.0 により F=id となる。具体的には、終端中心を整列した後の差が J に属して全 X 座標を固定し、評価写像の支配性が独立変数上の等号を与える。

同じ Picard 作用を持つ二語にもこの比較を適用する。J の元が曲面の恒等写像であるとは結論しない。[補足 F](#f-向きを保つ群の全単射) に証明を記す。

結論は 6.1 の群準同型の kernel が ⊥ であることとして公開し、単射性は既存 `MonoidHom.ker_eq_bot_iff` で得る。

*Needs:* 1.1、2.6、6.0–6.1。

### 6.3 全射性

任意の g∈G⁺ を取る。3.5 により根を避ける周期を取り、3.4 により a₁=a₀∘g|_K を満たす両端の中心を固定した表示 P で実現する。4.4 により引き戻し g の対の同型を得る。終域のトーリック収縮をこの同型で始域へ引き戻し、5.1–5.2 を指定された写像に適用する。

各基本変換は 5.4 の変異、トーリック格子同型と中心ラベルの変更は置換、節点細分は恒等の X 写像となる。平行移動は中心の枠変更に吸収される。両端が P なので得た語はループで、Picard 作用は指定した g である。この一点で定義された有限語は非空 Zariski 開集合で実現できる。

*Needs:* 3.4–3.5、4.4、5.1–5.5、6.1。一般のモジュライ空間や全群一致の外部仮定を使わない。

### 6.4 向きを保つ群の同定

6.1 の群準同型と 6.2–6.3 の単射性・全射性に `MulEquiv.ofBijective` を適用して Γᵒᵖ≅G⁺ を構成する。逆写像と両合成の恒等式は native `MulEquiv` の API を用いる。

同じ成分へ至る語を指定した基点変更について、この同型が語による共役と Picard 標識の変更による共役を対応させることを証明する。格子側の輸送には `isometryGroupCongr` とその評価式を使い、指定語の Picard 作用との図式可換性を新規に示す。任意の二種の連結性は仮定しない。

*Needs:* 6.1–6.3。native `MulEquiv.ofBijective`、`MulAut.conj`、格子等長群の基底変更。

### Examples

**Checks.** 二つの写像の実行順序 F′ の後に F を取ると、Picard 作用は `g_{F′}g_F` である。非可換な境界回転 r と鏡映 s の式 sr=r⁻¹s を 7.2 の合成検証にも使う。単一ファイバーの方程式 Xˣ=cˣ だけから w の一致を推論する方法では、cˣ=cʸ が偶然成り立つ場合を除けないため、中心変動と幾何的実現を使用する。

### Dependencies

6.0 → 6.1 → 6.2、6.1 → 6.3、6.2–6.3 → 6.4。単射性は全射性を、全射性は符号付き群の同定を使用しない。

## Layer 7: 符号付き群と関係式の完全判定

### 7.1 向きの反転と奇の語の存在

同じ曲面・同じ幾何的中心・同じ全例外類に、反対の格子向きを与えた表示 P̄ を作る。det̄=−det、z̄ʰ=(zʰ)⁻¹ なので、中心パラメータと X 座標は c̄=c⁻¹、X̄=X⁻¹ となる。同じ曲面の恒等写像を両表示の間で読むと、ς の実現を得る。この生の表示反転の Picard 作用は I=id、向きは η=−1、周期は逆数化であることを証明する。標識変更 g₀ とは区別する。

対象対の固定表示 P で根を避ける周期 a₀ を選び、

    a₁(x)=a₀(g₀x)⁻¹

を 3.4 により同じ表示の中心として実現する。4.4 の符号を含む系から、Picard 引き戻し g₀、向き −1、境界順像 j=2j₀ の同型を得る。最初に上の表示反転を入れると、残りは P̄ から P への向きを保つ指定された同型となる。5.1–5.5 により −ε から ε へ戻る反転なしの語 p₀ を得る。

ς の後に p₀ を続けた奇のループ o は Picard 作用 g₀ を持つ。奇のループの存在を符号射影の全射性の仮定に置かない。境界を鏡映で付け替え、標識を μg₀ として同じ議論を読む場合も、表示反転の I=id と標識変更の g₀ を一度ずつ適用する。

*Needs:* 0.3、1.2、3.4–3.5、4.4、5.1–5.5、6.4。証明は [補足 G](#g-符号付き拡大)。

### 7.2 偶奇の降下と主同型

0.3 の交換関係と 7.1 の o を用いて、任意の奇の語の写像を偶の語の写像と F_o の合成で表す。これにより任意の符号付きループを一般の中心で最小対の同型として実現する。同じ X 写像の二つの実現は 6.0 の比較定理から同じ向きを持つため、偶奇が Γ̃ の元だけで決まることを証明する。

実現の Picard 作用を g_F、向きの符号を η_F として、

    Θ: Γ̃ᵒᵖ ≅ Ĝ,  Θ(F)=(g_F,η_F)

を構成する。点の写像の記法では Θ(F∘F′)=Θ(F′)Θ(F) である。単射性は η=1 の核に対する 6.2、全射性は 6.3 と (g₀,−1) の実現による。元の曲面の周期を保存するという追加仮定を群の定義に入れない。

Θ は、反対群上に構成した `Γ̃ᵒᵖ →* Ĝ` の kernel が自明で像が全体であることを証明した後、`MulEquiv.ofBijective` により作る。語の偶奇が X 写像の等号で降下すること、幾何的 kernel の自明性、像が G⁺ と (g₀,−1) を含むことは引き続き本項の新規証明である。

3.1 の番号付きトーリック表示が対象対の数値条件を満たすとする。電荷 vᵢ=u_{ρ(i)} を持つ種の交換行列は εᵢₖ=det(vᵢ,vₖ) である。この表示に主同型を適用し、μ_{P,c} で共役すると、符号付きループの X 引き戻し群と L_P 上の符号付き境界等長群の同型を得る。引き戻しの積は 0.2–0.3 の点写像の合成と逆順である。

Tau Ceti の Y-seed でこの群を表すときは b=−ε とする。変異・反転と添字の付け替えの可換式により、付け替えを語の末尾にまとめる。標数 0 での代入と引き戻しの比較には既存の `Quiver.Path.xPullback_comp_toXField_eq_eval_ySeed` と `Quiver.Path.xPullback_eq_iff_ySeed_coefficient_eq` を用いる。

*Needs:* 0.2–0.3、1.3、6.0–6.4、7.1。番号付きトーリック表示には 3.1 の Picard 標識を用いる。

### 7.3 分裂と小さい境界の中心

符号準同型 η:Γ̃→ℤˣ の kernel が Γ であることを示し、奇のループの存在から全射性を得る。`Subgroup.index_ker` と符号群の位数 2 により Γ の指数は 2 となる。

Θ⁻¹(g₀,−1) は対合的な奇の元である。点写像側の通常の群へ半直積を移す際は、`MulEquiv.inv' Γ̃ : Γ̃ ≃* Γ̃ᵒᵖ` と Θ を合成し、既存 `GroupExtension.splittingEquivOfMulEquiv` で 1.3 の切断を輸送する。この同型による輸送は Conventions の Picard 引き戻しの向きを変更しない。Γ̃ の半直積構造とその成分式は、既存 splitting / semidirect-product API から得る。

輸送に必要な符号射影の可換性は、η(F⁻¹)=η(F)⁻¹=η(F) による。最後の等号は ℤˣ の元が ±1 であることから従う。

n≥3 では Θ と O(L) への射影が、境界を二面体置換する等長群への反同型となる。n≤2 では z=Θ⁻¹(id,−1) が非自明な中心的対合となる。1.3 の中央切断を輸送し、自明作用の `SemidirectProduct.mulEquivProd` を用いて Γ̃≅Γ×⟨z⟩ を得る。ε≠0 の種では裸の反転 ς はループでないので、この z の代わりにはならない。

*Needs:* 1.3、7.1–7.2。群の kernel / index、反対群への inversion equivalence、split extension の輸送、native 半直積と直積。

### 7.4 Picard 作用と Casimir 作用

Θ(F)=(g,η) に対し、全 x∈K について w_F(x)=ηg(x)、`Xˣ∘F=X^{ηg(x)}` を証明する。変異では 5.4、置換では 3.2 の自然性、反転では幾何的作用 id と単項式作用 −id を比較してから合成する。従って c′|_K=c|_K∘(ηg|_K)、w_F(δ)=ηδ である。 K への制限は 1.4 の native restriction API を用いて `Γ̃ᵒᵖ →* (K ≃ₗ[ℤ] K)` にまとめ、その range を符号付き Casimir 作用群とする。

Γ の K 作用の像、同値に G⁺ の制限準同型の range を W とする。1.2 の f に対し ℓ:K→ℤ、ℓ(κ)=2(κ·f) と置けば ℓ(δ)=2 である。そこで

    ι_K = Module.reflection (x := δ) (f := ℓ) hℓ,
    ι_K(κ)=κ−2(κ·f)δ

とし、計算式・対合性・ιδ=−δ には `reflection_apply`、`involutive_reflection`、`reflection_apply_self` を用いる。これは平方零の δ と線形形式 ℓ による反射で、平方 +2 を入力する lattice `rootReflection` とは別の構成である。δ が K の形式の radical にあるため ι_K はその形式を保つ。

1.2 の公式から ι_K=−g₀|K を同定し、符号付き像が互いに素な二つの coset W と Wι_K の和であることを証明する。K/ℤδ 上で ι_K は恒等である。作用の kernel は Γ に含まれ、n≤2 の中央元 z は −id_K に作用する。W の型別分類は必要としない。

*Needs:* 0.4、1.2、1.4、3.2、5.4、6.4、7.1–7.3。native `Module.reflection`、`LinearEquiv.ofSubmodules`、`MonoidHom.range` と kernel。

### 7.5 関係式の完全な整数不変量

符号付きループ w に、偶奇の符号 η_w、0.4 の整同型 w_K、0.5 の付値列が指定する境界の順像 D₀↦D_j を対応させる。反転では付値列の符号を変える。二つのループについて、次が同値であることを証明する。

    F_{w₁}=F_{w₂}
      ⇔ η_{w₁}=η_{w₂},  (w₁)_K=(w₂)_K,  j_{w₁}=j_{w₂}.

Θ(F)=(g,η) との対応は w_K=ηg|_K、`gD_l=D_{η(l−j)}` である。必要性は写像の単項式・付値の作用と偶奇の降下、十分性は 1.4 と 7.2 から示す。付値列の終値を探す集合は、終域の最小境界成分を表す有限個の射線である。整数基底上の有限行列の等号へ帰着するため、語の等価性は決定可能であることも帰結として証明する。

主張はループについてであり、指定した特殊周期のファイバー上の任意の有理写像の等号を、この判定と同一視しない。

異なる核格子の間の各辺の輸送には、有限整数基底を固定して既存 `LinearMap.toMatrix` と `toMatrix_comp` を用いる。ループの自己準同型とその積には `LinearMap.toMatrixAlgEquiv` と `toMatrix_mul` を用い、境界付値の有限探索で j を計算する。三不変量の必要十分性を、この具体的な判定の正当性定理として公開する。格子を native `IntegralLattice` に移して計算する場合には `Isometry.toIsometryMatrices` とその単射性を使える。これらの前向きの行列表示は退化 K にも適用できる。

*Needs:* 0.4–0.5、1.4、3.2、5.5、7.2–7.4。

### Examples

**Checks.** 任意の奇の元について gδ=δ だが w_Fδ=−δ である。n=1,2 では z の j=0、g=id、η=−1、w_F=−id となる。従って境界置換と Picard 作用だけを不変量にすると z と恒等元を誤って同一視する。n≥3 の回転・鏡映では、境界順像を (η,j) と書くと合成は (ηη′,j+ηj′) になり、引き戻しの添字式は逆順の積に対応する。

### Dependencies

7.1 → 7.2 → 7.3、7.1–7.3 → 7.4、7.2–7.4 と 1.4 → 7.5。主同型は関係式判定を仮定せずに構成する。

## Layer 8: Cremona 等長変換と具体的な群

### 8.1 Cremona 等長変換群との比較

Cr(Y) を、交点形式、標準類、有効類の半群を保つ Picard 群の自己同型群と定義する。[Sakai] §4 の (Cr1)–(Cr3) による。内部 (−2) 曲線のない対象対では、Cr(Y) が Ĝ→O(L) の像に等しいことを証明する。

Ĝ の像から Cr(Y) への包含は 4.1 による。逆包含では負の既約曲線の有効類の不可分解性を用いる。n≥2 で自己交点 −2 の既約曲線は境界成分に限られるため、それらの交点グラフの置換を得る。n≥3 ではその置換は二面体群、n=2 では任意の二成分の置換が回転となる。n=1 では唯一の境界類 δ=−K が固定される。

従って n≥3 では Γ̃ᵒᵖ≅Cr(Y) を証明する。n≤2 では Γ̃ᵒᵖ≅Cr(Y)×C₂ および Γᵒᵖ≅Cr(Y) を証明する。群の決定は 7.2 によるもので、[Sakai] Theorem 26 の型表から全群一致を仮定しない。

n≥3 で現れるグラフには既存 `SimpleGraph.cycleGraph` を用い、ZMod n の番号付けとの辞書を `ZMod.finEquiv` で固定する。サイクルグラフの自己同型が一意に j↦ηj+k と表されることを、曲面から独立した補題として証明する。既存 `cycleGraph_neighborSet` と Tau Ceti の隣接点が±1であることの補題から、0 と 1 の像で残りの像が決まることを示す。二面体群の carrier は `DihedralGroup n` を用い、その作用の評価と n≥3 での忠実性を公開する。この橋渡しを負の既約曲線の交点グラフに適用する。n=2 の二節点と n=1 の二枝は simple graph に符号を忘れさせず、従来の境界規約のまま別に扱う。

具体的には p(0)=k、隣接性から p(1)=k+η とする。p(i−1)、p(i) が決まったら、p(i+1) は p(i) の二つの隣接点のうち p(i−1) とは異なる方である。n≥3 なら i−1≠i+1 なので、単射性がこの選択を強制し、帰納的に p(i)=k+ηi を得る。η の一意性は 1≠−1 in ZMod n による。native 二面体群の規約には r a の作用を j↦j+a、sr a の作用を j↦−j−a として合わせ、既存 `r_mul_r`、`r_mul_sr`、`sr_mul_r`、`sr_mul_sr` で積との整合を証明する。

*Needs:* 2.3–2.4、4.1、7.2–7.3。

### 8.2 A₇⁽¹⁾′ の四頂点の種

ℙ¹×ℙ¹ の四つのトーリック節点を吹いた八角形の扇を取り、対角方向の四つの新境界成分をそれぞれ一つの内部点で吹く。全境界は八成分で各自己交点 −2、δ は原始的 nef 平方零であることを証明する。電荷は v₁=(1,1)、v₂=(−1,1)、v₃=−v₁、v₄=−v₂ で、ε₁₂=ε₂₃=ε₃₄=ε₄₁=2、ε₁₃=ε₂₄=0、s=2 となる。

K の基底 κ₁=e₁+e₃、κ₂=e₂+e₄ と δ=κ₁+κ₂ を使い、次の三つのループを構成する。語は書かれた順に実行する。

    π₂: σ(i)=i−1 による置換。
    T:  μ₁, μ₃, (1,2)(3,4)。
    π₁: ς, (1,3)。

π₂ は κ₁↦−κ₁+δ、T は κ₁↦κ₁+δ、π₁ は K 上 −id を誘導する。半回転 π₂² は K 上恒等だが境界を四成分回転する。具体的な Picard 格子上で、K 上恒等な G⁺ の元が恒等と半回転だけであることを証明する。[補足 H](#h-四頂点の生成元の完全性) の半整数係数による排除を使う。

K の基底 κ₁,κ₂ の Gram 行列は [[−2,2],[2,−2]] である。これは既存 `IntegralLattice.affineA1` の負形式なので、Gram 行列による等長同型を κ₁,κ₂ の対応を指定して公開する。

再利用可能な格子補題として、(κ,δ) を整数基底とし Gram 行列が diag(−2,0) である格子について、δ を固定する等長変換が一意に κ↦aκ+lδ（a∈ℤˣ、l∈ℤ）と表されることを示す。標準の二つの対合 sκ=−κ、tκ=−κ+δ と δ の固定に対し、既存 `TauCeti.dihedralHom` により `DihedralGroup 0` からこの作用群への準同型を得る。積 st は κ↦κ+δ なので無限位数であり、整数係数の表示と既存 `range_dihedralHom` からこの像が全体であることを示す。具体例には κ=κ₁ として適用する。

この新規補題の証明は基底係数で行う。δ 固定性から行列の第二列は (0,1)、第一列を (a,l) とすると平方の保存は −2a²=−2、従って a=±1 である。逆に任意の a=±1、l∈ℤ に対しこの行列は形式を保ち、κ↦aκ−alδ、δ↦δ が逆写像となる。a=1 の元は (st)^l、a=−1 の元は s(st)^l であり、基底上の等号から全体の等号が従う。(st)^mκ=κ+mδ と δ≠0 から st の無限位数が分かる。従ってこれは具体的 Picard 模型を入力としない分類補題になる。

π₂ と T の K 作用はそれぞれ t と st なので、可能な全像を生成する。ρ:G⁺→O(K) を制限準同型、G_gen を対応する二元が生成する native `Subgroup.closure` とすると、像の計算は G_gen.map ρ=ρ.range を与える。補足 H の具体的 Picard 計算は kerρ={id,r} と r=π₂²∈G_gen を与える。既存 `Subgroup.comap_map_eq_self` に kerρ≤G_gen を入れて G_gen=⊤ を得て、6.4 から Γ=⟨π₂,T⟩ を結論する。さらに符号準同型に同じ kernel / image の判定を適用し、奇の π₁ を加えて Γ̃=⟨π₁,π₂,T⟩ を得る。

π₂ は Γ 自体では平方が非恒等の半回転 r であり、二面体群の対合として使うのは K への像である。[BGM] (3.1) の三生成元との比較は X=y⁻¹ の共役で行い、上記の具体的 kernel 計算を保持する。

*Needs:* 0.2–0.5、2.2、2.5–2.6、3.2、6.4、7.2、7.4–7.5。具体的な階数 10 の整数格子計算。

### 8.3 一成分境界の中心的対合

ℙ² の三境界直線の射線 (1,0)、(0,1)、(−1,−1) 上に、それぞれ 2、3、6 個の相異なる内部中心を置く。最初の二直線の固有変換を順に縮約すると、最後の直線は自己交点 0 の既約結節反標準曲線になることを証明する。最初の二直線と交わらない内部例外曲線が δ と交点 1 を持つため、δ は原始的である。

11 ラベルの種で o=(ς,μ₁,μ₂)、z=(ς,μ₁,μ₂,(1,2)) を構成する。電荷核の条件は x₁+x₂=x₃+x₄+x₅=x₆+⋯+x₁₁ であり、δ=(3,3,2,2,2,1,1,1,1,1,1) となる。z は K 上 −id、n=1 なので Θ(z)=(id,−1) であり、全群の中心的対合であることを証明する。

この最後の同定には 7.5 を直接適用する。n=1 で j は唯一、η_z=−1、w_z=−id_K なので、z の完全不変量は 7.3 の Θ⁻¹(id,−1) と一致する。中心性と非自明な対合であることは 7.3 の定理を引き継ぎ、本例では語の端点と整数核作用の計算を証明する。

*Needs:* 0.2–0.4、2.2–2.6、3.2、7.2–7.5。境界の自己節点の二枝を区別する規約。

### Examples

**Checks.** 四頂点で π₂² は X₁↔X₃、X₂↔X₄ であり、有理写像として恒等ではない。κ₁、κ₂ は固定されるので、関係判定から j を除くと誤る。T の作用は

    (X₂(1+X₁)²(1+X₃⁻¹)⁻², X₁⁻¹,
     X₄(1+X₃)²(1+X₁⁻¹)⁻², X₃⁻¹)

であり、κ₁↦κ₁+δ だから無限位数である。一成分例の z は、X₁↔X₂、i=3,4,5 で Xᵢ↦Xᵢ⁻¹/((1+X₁)(1+X₂))、i≥6 で Xᵢ↦Xᵢ⁻¹(1+X₁)(1+X₂)/(X₁X₂) となり、二度の代入で恒等になる。

### Dependencies

8.1 は 7.2–7.3 の幾何的帰結である。8.2–8.3 は群同定と関係判定を具体的な種へ適用する目標であり、主同型の証明入力にはしない。

## Proof details

以下では、各レイヤーの特殊命題と橋渡しを展開する。L、M、K、δ、P、N、A、H と向きの規約は Conventions に従う。曲面論の基礎命題は Layer 2 の実装目標であり、この節ではその結論を入力とする。各証明は実装経路を与えるものであり、同じ仮定と結論を持つ別の証明を妨げない。

### A. 境界格子の整数計算

#### サイクルの核と飽和

サイクル行列 C の二次形式は、n≥1 に対して −Σ(qᵢ−qᵢ₊₁)² である。n=1 では零、n=2 では −2(q₀−q₁)² となる。従って ℚ 上の核は定数列である。ΣqᵢDᵢ=0 なら Cq=0 だから qᵢ=q、そして qδ=0 である。`TauCeti.IsPrimitive.ne_zero` により δ≠0 なので q=0、境界類は独立である。既存の直交補と有理化の API により M_Q∩(M⊥)_Q=ℚδ と M_Q+(M⊥)_Q=δ⊥_Q が従う。

Mˢ=(M⊗ℚ)∩L、T=Mˢ/M と置く。x=ΣqⱼDⱼ∈Mˢ に対し χⱼ(x)=qⱼ mod ℤ を定める。x·Dⱼ が整数なので、n≥3 では χⱼ₋₁−2χⱼ+χⱼ₊₁=0、n=2 では 2(χ₁−χ₀)=0 である。従って τ=χ₁−χ₀ により χⱼ=χ₀+jτ、nτ=0 となる。n=1 では δ の原始性から T=0 である。

τ(x)=0 なら x−q₀δ∈M である。原始性の定義に現れる ℓ:L→ℤ、ℓ(δ)=1 を有理化すると、q₀δ∈L から q₀∈ℤ が従う。よって x∈M であり、τ:T→ℚ/ℤ は単射となる。T は位数 t|n の巡回群である。T の生成元 x₀ に対して τ(x₀) は位数 t、χ₀(x₀) は t 分の整数である。従って 0≤j₀<t で χ₀(x₀)+j₀τ(x₀)=0 となるものがあり、`χ_{j₀}` は T 全体で零である。

この j₀ の係数を読む線形形式 Dⱼ↦[j=j₀] は Mˢ 上で整数値を取る。Mˢ の飽和性を `Submodule.isTorsionFree_quotient_iff` に入れて L/Mˢ の torsion-free 性を得て、`Submodule.exists_isCompl_iff_isTorsionFree_quotient` により補部分加群を取る。`Submodule.prodEquivOfIsCompl` の逆の第一射影に係数形式を合成して、L 上の整数線形形式へ延ばす。したがって整数値双対の延長一般論は既存結果の適用である。

この形式を `B.toPerfPair.symm` で f₁∈L に戻すと、f₁·Dⱼ=[j=j₀]、f₁·δ=1 となる。`B.IsCharacteristic δ` と対称性により f₁² は奇数なので、

    f=f₁−((f₁²+1)/2)δ

と置けば、f·Dⱼ=[j=j₀]、f²=−1 である。χⱼ の漸化式、成分 j₀ の選択、f の境界交点が本件の新規計算であり、f の有効性や曲線としての実現は用いない。

有理 radical の同定後、M/ℤδ の形式と carrier は `radicalQuotient` と `radicalQuotientMap` を使う。整数 kernel が ℤδ であることには原始 δ を 1 に移す整数線形形式を評価する議論を用い、`quotKerEquivOfSurjective` で既存商に接続する。χⱼ、τ と j₀ の計算はその同じ整数商上で行う。

#### 鏡映の構成

U=ℤδ⊕ℤf の Gram 行列は [[0,1],[1,−1]] で行列式 −1 である。この基底の行列式から制限形式の完全性を確認し、`LinearMap.BilinForm.isCompl_orthogonal_of_restrict_bijective` を適用して L=U⊕U⊥ を得る。`αᵢ=D_{j₀+i}`、1≤i<n は U⊥ 内の負の `A_{n−1}` 型の単純根である。

反射 sᵢ(x)=x+(x·αᵢ)αᵢ は、線形形式 −B(αᵢ,−) が αᵢ を 2 に移すことから既存の `Module.reflection` で構成する。形式を保つことには `LinearMap.IsReflective.of_dvd_two` と `isOrthogonal_reflection` を適用し、反射の対合性と直交ベクトルの固定は既存の反射 API を使う。`IntegralLattice.rootReflection` を用いる場合には、平方 +2 の入力に合わせて負形式を取る。

Q=Σℤαᵢ の負形式を有理化し、αᵢ の基底の Gram 行列が `CartanMatrix.A (n−1)` であることを確認する。既存の `IntegralLattice.Isometry.ofGramMatrixEq` と `typeAIsometryZeroSumLattice` により、Q を ℤⁿ の座標和零格子へ αᵢ↦bᵢ−bᵢ₊₁ と移す。元の形式は通常の内積の負である。この同型が反射 sᵢ を隣接互換に移すことが必要な橋渡しである。

隣接互換で順序反転を表す語を取り、同じ根反射の語を U⊥ に作用させて w₀ を得る。各反射は Q⊥ を固定するので、Q_Q とその直交補の直和上で w₀ の作用が決まり、`w₀αᵢ=−α_{n−i}`、w₀²=id となる。根反射の整数性が U⊥ の carrier の保存を保証する。n=1 では Q=0、反射語は空、w₀=id とする。

    g₀=id_U⊕(−w₀|_{U⊥})

は対合的等長変換である。`g₀Dⱼ=D_{2j₀−j}` は j≠j₀ について上式から、j=j₀ について δ の保存から従う。κ∈M⊥ なら κ·δ=0 なので κ=(κ·f)δ+κ⊥ と書ける。κ⊥ は全 αᵢ に直交するため w₀κ⊥=κ⊥、従って

    g₀κ=−κ+2(κ·f)δ.

以上が Suggested.lean の格子定理への証明経路である。標準 A 型の座標模型と一般の反射・直交分解を再利用し、サイクルの基底との比較および g₀ の境界作用を新規に証明する。

L=U⊕U⊥ は `orthogonalSplittingIsometry` の等長同型として取得する。g₀ はその同型を介して `Isometry.orthogonalSum` に id と `Isometry.neg`∘w₀ を渡したものであり、加法・射影の評価に同分裂 API の具体式を使う。w₀ を構成する根反射語と境界係数の計算は既存の記述を維持する。

#### 指数の制約

この段落は境界各成分との交点を指定した f の構成に依存しない。原始 δ に対して ℓ(δ)=1 なる整数線形形式を取り、完全双対 `B.toPerfPair.symm` により f₁·δ=1 なる f₁ を得る。特性元条件で f₁² が奇数と分かるため、f₀=f₁−((f₁²+1)/2)δ とすれば f₀²=−1、f₀·δ=1 である。

U₀=ℤδ⊕ℤf₀ の Gram 行列 [[0,1],[1,−1]] に既存の完全制限による直交分解を適用し、L=U₀⊕U₀⊥ とする。`orthogonal_orthogonal_of_isCompl` と `isPerfPair_restrict_of_isCompl_orthogonal` から U₀⊥ の完全性を得る。δ⊥/ℤδ≅U₀⊥ はこの直和の射影で構成する。U₀ の基底を δ+f₀、f₀ に替えると Gram 行列は diag(1,−1) となる。L の符号数が (1,9) なら、既存の直交和の階数・符号数の公式から U₀⊥ は階数 8 の負定値格子となる。δ に直交するので特性元条件から偶であり、完全な整数形式として単模である。

M/ℤδ の基底を境界成分から作り、符号を反転した形式の Gram 行列が `CartanMatrix.A (n−1)` であることを確認する。`IntegralLattice.Isometry.ofGramMatrixEq` で標準 `typeARootLattice (n−1)` と同定し、`discriminant_typeARootLattice` により判別式 n を得る。

S=(M/ℤδ)ˢ を同じ有理空間の格子として構成する。S の積分性から M/ℤδ の双対格子に入るので、符号を反転した S を標準 A 型の `IntermediateCarrier` として表せる。原始 δ による商と飽和を比較し、この overlattice の指数が元の [Mˢ:M]=t と一致することを証明する。既存の `IntermediateCarrier.IsIntegral.discriminant_mul_index_sq` と `index_sq_dvd_discriminant` を適用して、

    n=t² · disc(S),   t²|n

を得る。ここで disc(S) は符号を反転した格子の自然数値の判別式である。階数から n−1≤8、従って n≤9 となる。新規に必要なのは境界商の基底・形式と飽和指数の比較であり、A 型行列式、指数平方公式、偶単模格子の分類は実装し直さない。

δ⊥ の rational radical が ℚδ であることと整数 kernel の同定を証明して、native radical quotient を δ⊥/ℤδ と読む。偶性の下降と符号数の保存は `IsEven.radicalQuotient`、`signature_radicalQuotient` を用いる。単模性と階数 8 の結論は f₀ と `orthogonalSplittingIsometry` による完全な U₀ 分裂から得る。この段落を強い境界交点を持つ f の構成へ依存させない。

#### 制限と境界像による一意性

等長変換 h が M⊥ と全 Dⱼ を固定すると、h は δ⊥_Q=M_Q+(M⊥)_Q を点ごとに固定する。f·δ=1 なる f に対して、hf−f は δ⊥_Q の全元に直交するため aδ と書ける。平方の保存から

    0=(f+aδ)²−f²=2a,

よって hf=f、h=id となる。従って格子作用を区別するには M⊥ 上の作用と境界類の像で足りる。向きの符号 η と D₀ の順像 j が分かれば、引き戻しの全境界像は `D_l↦D_{η(l−j)}` で回収できる。

まず 1.4 の一般的な等方超平面の剛性補題として、現在の hf−f=aδ、平方比較 2a=0 の証明を公開する。サイクルの場合の新規入力は δ⊥_Q=M_Q+(M⊥)_Q であり、整数 lattice の equality は有理化への単射から戻す。

### B. 電荷と有限指数

#### 核上の単項式の輸送

以下の二項式指数の消去は任意の歪対称交換行列の行列核について行い、電荷核には ker(v′)⊆ker(ε′) を通して適用する。原始電荷や rank H=2 はこの計算に使わない。

変異後の行列核の元 x∈ker(ε′) に対し、k 行目の核条件は `Σ_{i≠k}εᵢₖxᵢ=0` である。従って変異公式から

    ∏_i(X′ᵢ)^xᵢ
      = (∏_{i≠k}Xᵢ^xᵢ) Xₖ^(−xₖ+Σ_{i≠k}[εᵢₖ]₊xᵢ)
        ·(1+Xₖ)^(−Σ_{i≠k}εᵢₖxᵢ)
      = X^{Bₖx}.

Bₖ が行列核を行列核へ写すことは ε′=Fₖᵀ ε Fₖ と Fₖ の可逆性から従う。電荷核については v′=v∘Bₖ を使う。置換は指数を同じ置換で移し、反転は全指数を負にする。各段の核を始域・終域として合成すれば、語全体の単項式作用が得られる。

#### 境界直交類の整数表示

補助模型を、滑らかなトーリック面 Ȳ の内部 blowup の有限列として書く。全変換の例外類 Eᵢ を用い、類を H_x−ΣxᵢEᵢ と表す。境界射線 u 上の固有変換との交点が零になる条件は

    H_x·D̄_u=Σ_{vᵢ=u}xᵢ.

滑らかな完備扇のトーリック交点表示では、指定した多重次数 d_u が因子類の次数となる必要十分条件は Σd_u u=0 である。これは隣接射線を基底とする支持関数の整数漸化式、またはトーリック Picard 表示の双対から証明できる。従って H_x は x∈ker(v) に対して一意に存在する。逆に、境界直交類の Eᵢ との交点が xᵢ である。これにより補助模型上の境界直交格子と K が同定される。

節点 blowup では Picard に新しい例外類が直交和として加わり、境界の生成群にも同じ例外類が加わる。境界との直交条件はその新成分を零にするため、上の同定は最小対へ降りる。

#### ノルムの必要な合同式

電荷を境界に沿う時計回り順、すなわち det が定める正の向きの逆順に並べる。Σxᵢvᵢ=0 なので、辺 xᵢvᵢ を持つ閉じた整数辺の列を作れる。符号付き面積の交点計算、または扇の支持関数の漸化式から

    H_x²=−Σ_{i<j}det(vᵢ,vⱼ)xᵢxⱼ,
    (H_x−ΣxᵢEᵢ)²=−Σxᵢ²−Σ_{i<j}det(vᵢ,vⱼ)xᵢxⱼ

となる。辺の係数 xᵢ が負でも、両辺が同じ二次形式なので式は全整数関係に成立する。同じ射線のラベルの交換は行列式零の項しか変えない。巡回順の始点の変更による差は det(Σxᵢvᵢ,Σxᵢvᵢ) の対応項として零になる。

この符号付き式を任意のラベル順で使わず、d が全 det(vᵢ,vⱼ) を割る場合の結論

    κ²≡−Σxᵢ²  (mod d)

だけを順序に依存しない形で取り出す。

8.2 の四電荷と δ=(1,1,1,1) では、時計回り順は 1,4,3,2 であり、この式は δ²=0 を与える。番号順 1,2,3,4 をそのまま代入すると −8 になる。従って符号付き式の入力順序を型または明示的な並べ替えで保持する。

#### 境界商と電荷指数

トーリック境界が生成する Picard 表示に内部例外類を加える。境界の固有変換を零とする商では、各トーリック境界類はその上の内部全例外類の和に置き換わる。残る主因子の関係は

    Σ_i ⟨m,vᵢ⟩Eᵢ=0  (m∈N*)

である。従って補助模型の Picard 群を境界生成群で割った商は coker(v*:N*→A*) となる。節点 blowup は商を変えないので、これは L/M に等しい。以下の数値的帰結では対象対を取る。Smith 標準形により

    |tors(L/M)|=[N:H]=s.

Mˢ/M=tors(L/M) なので A 節の t が s に等しい。Picard 階数を数えると、節点 blowup 数を b として

    10+b=(n+b)−2+m,

従って m=12−n。K の階数は 10−n だから H は階数 2 である。これで s²|n と n≤9 が電荷側にも適用できる。

### C. 終端ラベル同定の延長

変異は電荷列に可逆な整数基底変更を施すので H を保つ。電荷が N を有理的に張るため ker(v)=ker(ε) である。従ってラベル同定後に交換行列が等しければ、両者の `LinearMap.quotKerEquivRange` を合成して同じラベルの電荷を移す H₁≅H₂ を得る。行列式の制限も保存される。3.2 で構成した、長方形電荷行列の最高次 minor ideal と H↪N の Smith 係数を比較する補題から `s=[N:H]=gcd_{i<j}|εᵢⱼ|` となり、両表示の s は一致する。

H の同型から N の同型への延長は一般には自動でない。B 節により s=1,2,3 だけを調べればよい。s=1 では H=N である。s=p が素数なら pH⊂pN⊂H で、

    ℓ=pN/pH⊂H/pH

は二次元の 𝔽_p 空間の直線となる。各 vᵢ は N で原始的なので、その剰余は非零で ℓ に属さない。実際 vᵢ∈pN なら vᵢ は N で p 倍に割れる。

p=2 では、電荷が H/pH を張るので射影直線の三点のうち少なくとも二点を占める。残る一点が ℓ であり、一意に復元される。

p=3 では s²|n≤9 より n=9、m=3 である。電荷の 2×2 小行列式を H の基底で取り、

    x=(det_H(v₂,v₃),det_H(v₃,v₁),det_H(v₁,v₂))

とする。電荷が H を生成するので、その H 座標行列の range は全空間である。3.2 の同じ minor ideal 比較をこの全射に適用すると、三つの 2×2 小行列式の最大公約数は 1 となる。余因子展開により x は核に入り、階数一の K の原始生成元である。δ も K の原始元なので x=±δ である。det_N の全成分は 3 の倍数で、δ²=0 だから B 節の式により Σxᵢ²=0 mod 3。少なくとも一つの座標は非零で、𝔽₃ の非零平方は 1 なので三座標全てが非零となる。従って三電荷は 𝔽₃ の射影直線の相異なる三点を占める。第四の点が唯一の ℓ である。

H のラベル同型はこの特徴付けを保つため、pN を対応させ、さらに N を対応させる。その ℚ 線形延長が必要な整数格子同型となる。変異で原始性が保存されることは、各半平面で電荷の変更が行列式 1 の剪断となることから従う。

N の同型が得られた後、扇の共通の滑らかな細分を取り、同じ射線上の相異なる中心の順序を合わせる。最小対の境界の全変換は境界交点行列の原始正の零ベクトルである。係数 1 の成分が元の境界、係数が 1 より大きい成分が節点 blowup の例外集合であるため、二つの最小化の縮約集合が一致する。縮約の一意性から最小対の同型を得る。

### D. 必要な周期再構成

#### 周期と中心

節点サイクルの正規化で、多重次数零の線束を各有理成分上で自明化する。節点の接着比の積は自明化の変更で変わらず、これを Pic⁰(D)≅ℂ× の座標とする。向きの逆転は全接着比を逆に読むので逆数を与える。

B 節の類 H_x−ΣxᵢEᵢ を境界に制限すると、H_x の固定された接着比と中心 pᵢ の値の積になる。pᵢ は zᵛⁱ(pᵢ)=−cᵢ⁻¹ を満たす。二中心 c,d の比を取ると H_x の寄与と −1 の因子が消え、規約だけによる共通の符号 θ について

    a_{P,c}(x)/a_{P,d}(x)=((c/d)^x)^θ

を得る。基準中心 d を取って `χ_P(x)=a_{P,d}(x)/(d^x)^θ` と置く。この比の公式は χ_P の基準中心からの独立性を与え、H_x と制限の加法性から χ_P は指標となる。

    a_{P,c}(x)=χ_P(x)·(c^x)^θ.

A/K≅H は自由なので K は A の直和因子であり、指標の制限 T(A)→T(K) は全射である。従って周期写像も全射となる。向き η の対の同型による引き戻しは接着比の積を η 乗へ移すため、a₁(x)=a₀(Ψ*x)^η が得られる。

同じ周期を持つ同じトーリック組合せ型の中心は、χ_P を消去すると同じ K 指標を持つ。比は H の指標で、それを N へ延長して平行移動すれば中心が対応する。これは [GHK-M] Proposition 2.9 と Corollary 2.10 の中心再構成の特殊形である。

#### 根のない点

対象対では δ は L で原始的で、K は L の部分加群だから K/ℤδ に捩れはない。整数基底 δ,β₁,…,β_r を選び、相異なる奇素数 pᵢ に対して

    a(n₀δ+Σnᵢβᵢ)=2^(−n₀)∏pᵢ^{nᵢ}

と置く。素因数の指数比較から a は単射である。従って全ての非零平方 −2 類と、その全ての δ 平行移動で値 1 を取らない。a/χ_P と θ を用いて中心を選べる。内部 (−2) 曲線の類は境界上の自明線束を与えるので、そのような中心では内部 (−2) 曲線が存在しない。

この議論は一点の存在である。全根を避ける集合が Zariski 開であるという主張を含まない。選ばれた一点から有限語を得た後、その語に必要な有限個の非衝突条件だけが非空 Zariski 開集合を定める。

#### 有効錐と補助模型

nef な δ に対して、e²=−1、eδ=1 なら χ(O(e))=1、(K−e)δ=−1 である。2.3 の有効性より e または K−e が有効であり、δ との負の交点で K−e を除外すると e の有効性が従う。境界以外の負の既約曲線 C は、Cδ≥0 と算術随伴から、内部 (−2) 曲線または (−1) 曲線である。内部 (−2) 曲線がなければ後者だけが残る。

境界類を対応させる等長変換 g は δ を固定するため、豊富類を含む正錐成分を保つ。非負自己交点の有効曲線の像 x もこの正錐の閉包にあり、豊富類 h に対して h·x>0、xδ≥0 となる。χ(O(x))≥1 と h·(K−x)<0 から x は有効である。負の曲線の像の有効性は前段による。逆写像にも適用して、有効半群が対応する。Nakai–Moishezon から豊富類も対応する。

一般の根のない Looijenga 対について、ここからは豊富錐を対応させる g を入力にしてよい。対象対の場合は前段がその条件を供給する。対応する節点を吹くとき、g を新例外類の対応で延長する。既知の豊富類 h と gh に対し、十分大きな N で Nπ*h−E とその像がともに豊富になる。補助模型で上の構成から得た一組の豊富類 H と gH を固定する。M̃_H={e : e²=eK=−1, e·H>0} と置くと、g は M̃_H を M̃_gH へ送る。nef 錐は、正錐 C⁺ 内で M̃_H、境界類、実際の内部 (−2) 曲線との非負交点を課した集合の閉包である。この記述は [GHK-M] Lemmas 2.13–2.15 の特殊形である。延長はこれらを対応させるため、補助模型の豊富錐を対応させる。元の δ の nef 性はここで使い直さない。

錐の閉包と双対は 4.1 の `ProperCone` 上で扱い、極線の輸送と有効分解の成分の判定には 4.2 の `PointedCone.IsFaceOf` の既存定理を使う。新規の幾何的内容は上の錐の記述と負曲線の極線性であり、一般の錐双対性や面の輸送をもう一度証明する必要はない。

#### 指定された格子同型の実現

一方の対のトーリック模型を選ぶ。根のない対では、内部 blowup の中心が同じ境界点の上で重複すると内部 (−2) 曲線が生じるため、その例外配置は互いに素な (−1) 曲線からなる。補助模型間の錐の対応は、この例外配置を他方の実際の例外配置へ移す。両側で縮約する。

q(Y,D)=rank Pic(Y)+2−#D は内部 blowup で 1 増え、節点 blowup では不変である。トーリック模型存在から q は内部中心数であり、q=0 の対はトーリックである。従って両側の縮約先はトーリックになる。対応する境界の自己交点列から扇を再構成し、同じトーリック組合せ型に帰着する。周期の一致から中心が平行移動まで一致し、指定された格子同型を誘導する対の同型が得られる。これは [GHK-M] Theorem 1.8 の generic な証明部分を有限の構成に展開したものである。

### E. 因数分解から語への橋渡し

[HKL] Appendix の Lutz Theorem 8.4 の入力は、一つの対からの指定された二つのトーリック収縮 p,p′ である。出力は p′p⁻¹ 自体の因数分解で、各部分合成と p の合成が元の対の節点 blowup 上で正則になる。有限個の節点 blowup を共通細分 Z にまとめる。

この有限列の存在証明も形式化の対象とする。一般のトーリック両端をトーリック操作で ℙ² と Hirzebruch 面へ帰着し、F=ℙ² または F_a から ℙ² への、対数二形式を非零定数倍まで保つ双有理写像を扱う。引き戻した直線系について、F=ℙ² では次数 d に対し λ=d/3、F_a では [HKL] Definition 8.5 の係数 b に対し λ=b/2、副次数は M=(−K_F)·L−3 とする。平面では M=3d−3、Fₖ では L=aA+bS₋ に対して M=2a+(2−k)b−3 である。高い切断中心の位数を u とすると基本変換の後に M′−M=b−2u<0 となる。各端点で M=Σmⱼ なので (6λ,M) は非負整数の対である。

平面の高多重度中心、線織面の高い切断中心、または高い中心がない場合の F₀・F₁ のリンクは [HKL] Appendix の計算を使う。高い点が不変ファイバーの開軌道上にしかない場合、その個数 r は準備前に一つまたは二つである。Fₖ の正切断上の上位 k 位数の和を W、準備前の高い位数を Mᵢ とすると、指定標的の座標三角形を使って 2(a−W−ΣMᵢ)<(2−r)b が得られる。F₀ の対応する proper center の位数 μᵢ は Mᵢ 以上である。r=1 では平面次数 a−W+b−μ₁、r=2 ではファイバー次数 a−W+b−μ₁−μ₂ になり、いずれも 6λ が真に下がる。準備後の他の基点の個数に制限を置かず、ブロック単位で整礎帰納を行う。[中心の輸送と不等式の証明](PositiveSectionDescent.md)

各写像 hᵢ:Z→Tᵢ を点 blowup の逆列に分解する。Tᵢ のトーラスの対数二形式を引き戻すと、Z の被約境界に単純極を持ち、零因子を持たない。中心での局所計算を、単元因子を除いた次の三つの形で行う。一方の blowup chart x=u、y=uv では、

    dx∧dy ↦ u du∧dv,
    (dx/x)∧dy ↦ du∧dv,
    (dx/x)∧(dy/y) ↦ (du/u)∧(dv/v)

となる。もう一方の chart との貼り合わせまで確かめ、例外曲線での位数が順に 1、0、−1 であることを divisor の等式として得る。従って滑らかな境界点の内部 blowup では新境界は固有変換のみ、節点 blowup では固有変換と例外曲線の和となる。自己節点ではエタール局所で二枝を取って同じ計算を行い、二枝の順序を正規化のデータに記録する。

零因子が一度生じれば、その固有変換は点 blowup の有限列の最終模型まで残る。従って極のない点での blowup は起こらない。許される操作は境界の滑らかな点と節点の blowup だけとなる。各中心を現在の曲面上の閉点 ideal として保持し、異なる点にある二中心の順序交換を用いて節点操作を先へ移す。新しい節点例外成分上の中心や、同一点の上の無限近点はその前提となる操作の後に残す。この操作ごとの射の可換性を記録して、

    Z → Sᵢ → Tᵢ

と分ける。前半は内部 blowup の逆列、後半はトーリック節点細分である。Sᵢ の扇は各境界成分上の指標の付値から復元される。

隣接するトーリック blowup/down の段は、この整理の後には同じトーラス座標を持つ節点細分になる。非トーリック基本変換の中心 p は、hᵢ の内部 blowup 列に現れなければならない。現れなければ p 近傍で hᵢ は同型であり、次の部分合成が Z 上で正則になることに反する。p 上の最初の中心を他点上の中心との交換で取り出し、その例外曲線と ruling のファイバーを用いて基本変換を行う。残る中心は共通解消上で運ぶ。同一点の近接中心は順序を変えない。

#### 一変異の全 Picard 比較

反対射線を加えた扇で v=vₖ とし、tₖ(u)=u+[det(u,v)]₊v と置く。ruling のファイバー類 F は `Σ_{det(u,v)>0}det(u,v)[D̄_u]` である。5.4 の生成元公式は新しいトーリック主因子の関係を保つ。実際、その関係を Iₖ で移した差は

    det(h,v)·(Σ_{det(u,v)>0}det(u,v)[D̄_u]−F)=0

となる。従って整数写像はトーリック Picard の商に降りる。中心を blowup した共通曲面では新例外曲線は元の fibre の固有変換となり、E′ₖ=F−Eₖ を得る。二つの切断の全引き戻しはそれぞれ D̄_v−Eₖ、D̄_−v+F−Eₖ、他の境界の全引き戻しは同じ D̄_u となる。この比較で全生成元公式と等長性が証明される。近接中心があれば、さらに共通の点 blowup を施し、全変換例外類で同じ引き戻しを比較する。

K の元 x について H′_x の fibre との交点は `Σ_{i≠k}[εᵢₖ]₊xᵢ` である。従って Iₖ(H′_x−ΣxᵢE′ᵢ) の Eₖ との交点は `−xₖ+Σ_{i≠k}[εᵢₖ]₊xᵢ`、他の Eᵢ との交点は xᵢ となる。これが Bₖx であり、補助模型上で Iₖ∘ι̃_P′=ι̃_P∘Bₖ を得る。節点縮約を降りた写像では ι̃ を ι に置き換える。

基本変換のトーラス公式と中心写像は

    Ψₖ,c* z′ʰ=zʰ(1+cₖzᵛᵏ)^(−det(h,vₖ)),
    c′ₖ=cₖ⁻¹,  c′ᵢ=cᵢcₖ^[εᵢₖ]₊ (i≠k)

である。新しい電荷を代入すると X 変異となり、標識と Picard 引き戻し、中心と評価の二つの可換式を同時に得る。toric linear map はラベル同定、torus translation は中心の枠変更、節点細分は X 関数を変えない操作である。これらについても可換式を保つことを確かめる。

与えられた同型 ψ:Y₀→Y₁ の Picard 作用を実現するには、終域の toric contraction を ψ で始域へ引き戻してから上の定理を適用する。単に「二つの模型を何らかの語で結べる」としては、指定した ψ の作用を再現したことにならない。

### F. 向きを保つ群の全単射

#### 同じ X 写像から同じ格子作用へ

同じ表示 P₀,P₁ に対する二つの幾何的実現 ψ_a:Y_P₀(c)→Y_P₁(c_a) が同じ X 写像を持ち、終域の rank H₁=2 とする。x∈K₁ に対し Xˣ は終域曲面で定数 c_aˣ なので、c₁|_K₁=c₂|_K₁ である。中心をトーラス平行移動 τ:Y_P₁(c₂)→Y_P₁(c₁) で整列する。この平行移動は標識と向きに関して恒等である。

残差 α=τψ₂ψ₁⁻¹ は H₁ の全指標を固定する。sN₁⊂H₁ なので N₁ の各基底 e に対して

    r_e=(α*zᵉ)/zᵉ,  r_eˢ=1.

`IsAlgClosed.splits` と `Polynomial.Splits.mem_range_of_isRoot` を ℂ 上の Xˢ−1 に適用すると、各 r_e は ℂ の定数の 1 の冪根である。指数に関する乗法性からある j∈J₁ を得て、0.1 の `charTwist` と並進の比較により α はトーラス上で j の並進に一致する。j は順序付き内部中心と近接中心を保存し、各 blowup の自然性で曲面へ延びる。稠密開上の射の等号から α=j となり、二つの Picard 作用、境界対応、向きは一致する。

#### 同じ格子作用から同じ X 写像へ

一般の対で、向きを保ち各境界成分を固定する Picard 自明自己同型には、4.5 の順序付き近接中心を許す核の計算を適用する。節点と枝の保存によって節点 blowup へ持ち上げ、内部 blowup を逆順に降りる。各段で現在の最後の例外 (−1) 曲線はその有効類の唯一の代表なので保存され、対応する縮約へ自己同型が降りる。引き戻しの単射性によって降りた自己同型も Picard 自明であり、これを繰り返すと全トーリック境界成分を保つ自己同型を得る。この帰納法は各段の実際の例外曲線に適用するため、近接中心を含む順序付き列にも使える。

トーラスの自己同型の座標環への作用には、0.1 の一般補題を適用する。その証明は既存 `AddMonoidAlgebra.unitsEquiv` で各単項式の像を定数単元と指数に分け、自己同型とその逆から指数の整数線形同型を得るものである。線形部分は全原始境界射線を固定するので恒等となり、残る座標作用は既存 `MonoidAlgebra.charTwist`、スキーム上では `TauCeti.leftTranslation` である。順序付き中心の保存はこの文字が H 上自明であることを意味するため、自己同型は J の元となる。J の有限性は用いない。 [GHK-M] Proposition 2.6 の必要部分に対応する。

同じ P₀,P₁ の二つの実現の I、β、η が一致するとする。周期の自然性 a₁(x)=a₀(Ix)^η と同じ表示の中心比の公式から、両終端の K 指標が一致する。整列後の差は向きと各境界成分を保つ Picard 自明自己同型なので、近接中心も許す核の定理により J に属し、全 Xᵢ を固定する。この点ごとの比較を 3.3 の補題で評価後の共通正則域上の等号に移す。ev_P₀ は中心の任意の非空開集合に制限しても支配的なので、独立変数上で F₁=F₂ を得る。

対象対では境界類の一次独立性から I が β を決める。反転なしの語では η=1 なので I の一致だけで比較できる。符号付きの一般比較では η を保持する。

#### 全射性

g∈G⁺ に対し、D 節で根を避ける a₀ と a₁=a₀∘g|_K を固定表示の中心として実現する。D 節の再構成から、引き戻し g の対の同型を得る。E 節の指定された同型の因数分解を適用する。各段を X 変異、ラベル同定、X を変えない枠変更へ読み替えるとループが得られ、その Picard 作用は g である。これで Γᵒᵖ→G⁺ は全単射となる。

### G. 符号付き拡大

向きだけを逆にした表示では det̄=−det、z̄ʰ=(zʰ)⁻¹ である。中心方程式 1+cᵢzᵛⁱ=0 は 1+cᵢ⁻¹z̄ᵛⁱ=0 と同じなので、c̄=c⁻¹、X̄=X⁻¹ となる。これは同じ曲面の恒等写像を異なる表示の間で読む操作である。

この恒等の underlying map の Picard 作用は id であり、境界の向きだけが反転する。根を避ける a₀ を固定し、a₁(x)=a₀(g₀x)⁻¹ を同じ表示 P の中心として実現する。4.4 の向き −1 の系は、g₀ を引き戻しとし、D₀ の順像が D₂ⱼ₀ である同型を与える。先に P→P̄ の表示反転を適用すれば、残りは P̄→P の向きを保つ指定された同型となる。

D 節の再構成と E 節の因数分解により −ε から ε への反転なしの語 p₀ を得る。最初に ς を実行した語 o は奇のループで、Picard 作用は g₀ である。標識を μg₀ に変更して読む場合も、生の表示反転の作用 id に g₀ を重ねて二度適用しない。

反転と変異・置換の交換関係から、任意の奇の語は o と偶の語の合成として書ける。従って全ての符号付きループが一般の中心で曲面同型として実現する。同じ X 写像の二つの実現は F 節の議論により同じ向きを持つので、偶奇が群へ降下する。

Θ(F)=(g_F,η_F) と定める。引き戻しにより Θ(F∘F′)=Θ(F′)Θ(F)。核は η=1 の部分にあり、F 節の単射性から自明である。像は G⁺ と (g₀,−1) を含み、A 節の半直積から Ĝ 全体となる。

この kernel と image の計算を `MonoidHom` の定理として公開し、同型には `MulEquiv.ofBijective` を用いる。分裂の作用・成分分解には 1.3 の native `GroupExtension.Splitting` を使う。以降の w_F=η_Fg_F と三不変量の比較は、その同型の評価式に対する本件の bridge である。

変異とラベル変更では単項式の指数作用が Picard 引き戻しに一致する。反転では幾何的引き戻しは id、単項式作用は −id である。合成して w_F=η_Fg_F|_K を得る。特に g_Fδ=δ と w_Fδ=η_Fδ が同時に成り立つ。

η と D₀ の順像 j が分かれば g_F の全境界像は `D_l↦D_{η(l−j)}` である。A 節の忠実性より、(η,w_F,j) の一致から g_F の一致が従う。Θ の単射性が関係式の十分性を与え、逆方向は同じ有理写像の単項式・付値・偶奇の一致である。

### H. 四頂点の生成元の完全性

ℙ¹×ℙ¹ の二つのファイバー類を H₁,H₂、四節点の全例外類を E₁,…,E₄、その四つの境界例外曲線の内部 blowup の全例外類を F₁,…,F₄ とする。Gram 行列は H₁²=H₂²=0、H₁H₂=1、Eᵢ²=Fᵢ²=−1、他の積は零である。

    D₀=H₁−E₁−E₄,  D₁=E₁−F₁,
    D₂=H₂−E₁−E₂,  D₃=E₂−F₂,
    D₄=H₁−E₂−E₃,  D₅=E₃−F₃,
    D₆=H₂−E₃−E₄,  D₇=E₄−F₄.

全成分の平方は −2、隣接積は 1、その他は零である。δ=2H₁+2H₂−ΣEᵢ−ΣFᵢ は原始的で平方零であり、各境界成分との交点が零、その他の既約曲線との交点が非負なので nef である。

    κ₁=H₁+H₂−E₁−E₃−F₁−F₃,
    κ₂=H₁+H₂−E₂−E₄−F₂−F₄

が K の基底になる。境界との直交式を順に解くと、Eᵢ と Fᵢ の係数が等しく、対角の二組ごとに一致し、H₁,H₂ の係数がその二値の和になる。従って他の整数生成元は不要である。K の Gram 行列は [[−2,2],[2,−2]]、δ=κ₁+κ₂。内部例外類との交点は κ₁↦e₁+e₃、κ₂↦e₂+e₄ となる。

K を固定し Dᵢ を Dᵢ₊ₖ に移す等長変換を考える。x=E₁−E₂ について

    4x=−D₀+2D₁+D₂+3D₄+2D₅+D₆−2κ₁.

従って g(x) は右辺の D の添字を k だけずらして求まる。基底順を (H₁,H₂,E₁,E₂,E₃,E₄,F₁,F₂,F₃,F₄) とすると、k=1,2,3 の像はそれぞれ次の通りである。

    k=1: (−1/2, 1/2, −1/4, −1/4, 3/4, −1/4, 3/4, −1/4, −1/4, −1/4),
    k=2: (0, 0, 1/2, 1/2, −1/2, −1/2, 1/2, −1/2, 1/2, −1/2),
    k=3: (1/2, −1/2, 1/4, −3/4, 1/4, 1/4, 1/4, 1/4, 1/4, −3/4).

いずれも非整なので L の自己同型にはならない。H₁,H₂ を固定し Eᵢ,Fᵢ を Eᵢ₊₂,Fᵢ₊₂ に移す半回転 r は整数等長変換であり、K を固定して Dⱼ↦Dⱼ₊₄ とする。r との合成で k=5,6,7 も除外される。k=0 と 4 の一意性は A 節によるため、K 作用の核は {id,r} である。

基底 (κ₁,δ) についての計算は、8.2 の退化二次元格子の δ 固定群の補題へ分離する。native `−affineA1` との比較により、K の等長群の該当部分は κ₁↦±κ₁+lδ の唯一の表示を持つ。二つの対合 sκ₁=−κ₁ と tκ₁=−κ₁+δ は `TauCeti.dihedralHom` の入力となり、st の無限位数とこの表示から作用群の生成を得る。π₂ の K への像は t、T の像は st である。

ここから Picard 等長群全体の生成へ戻す際には、G_gen を π₂,T の像が生成する部分群とする。既に求めた kerρ={id,r} と r=π₂² から kerρ≤G_gen、作用群の計算から G_gen.mapρ=ρ.range を得る。`Subgroup.comap_map_eq_self` と `MonoidHom.comap_range_self` により G_gen=⊤ であり、6.4 を通して Γ=⟨π₂,T⟩ を得る。奇の π₁ を加えた生成の主張も、符号の kernel が Γ であることに同じ判定を適用した系である。k=1,2,3 の非整数座標と半回転 r の具体式はこの kernel の入力として保持する。

[BGM] (3.1) の語と比較するときは X=y⁻¹ による共役を取る。群全体を生成することは上の核と像の計算によるものであり、同論文の部分群包含から推論していない。

## Downstream consumers

点 blowup と有限列の標識、中心を保存する同型の持ち上げ、階数 2 の star subdivision と scheme blowup の比較、内部中心と節点中心の境界変換は、群同定とは独立に利用できる幾何 API となる。順序付きトーリック表示を持つ個々の q-Painlevé 曲面やその写像に適用する際は、順序付き中心、その理想、正則 chart と逆写像の計算を入力して 3.1・5.4 の構成へ接続する。

群の同型と関係式判定は、同じ種で得られた二つの離散力学が同じクラスター変換かを比較する入力となる。Cremona 群との比較は、q-Painlevé 対称性を X 有理写像の群へ移す。これらの利用では、固定した周期を保つ部分群を別に取り出す必要があり、全クラスター群が一つの曲面の自己同型群であるとは主張しない。

## Scope and ownership

### 本ロードマップが構成するもの

全レイヤーの必須の出口は、Γᵒᵖ≅G⁺、Γ̃ᵒᵖ≅Ĝ、符号拡大の分裂、n≤2 の中心的対合、(η,w,j) による関係式判定、内部 (−2) 曲線のない場合の Cremona 群比較、および 8.2–8.3 の具体的な群である。中心や周期を一般位置に制限する条件は証明中の実現点を選ぶための条件であり、独立 X 有理写像の群の定義や最終同型の入力には追加しない。

必要な定義・定理は、主定理の条件を共通の定義に埋め込まず、それぞれ自然な入力と基本 API を持つ成果として構成する。有限自由整数加群上のトーラス、滑らかな射影曲面の交点と点 blowup、有理曲面の数値的定理、一般の Looijenga 対の表示と周期を区別し、原始的 nef 平方零という条件はその帰結を使う命題に課す。

既存の対象・写像・定理を共通の供給元とし、記法の比較、仮定の充足、対象の幾何への適用を各担当項目で扱う。恒等・合成・引き戻し・同型不変性などの基本 API は、以下の供給契約と各項の比較定理から得る。

滑らかな射影曲面上の線束に対する完全 pairing H²(L)×H⁰(ω_Y⊗L⁻¹)→ℂ と次元等式 h²(L)=h⁰(ω_Y⊗L⁻¹) は、双対化層と最高次微分形式の比較を含む一般のセール双対性の範囲に属する。本書の有効性と錐の比較に必要な入力は 2.3 の H² の消滅と Riemann–Roch である。[SchemeAndStackFoundations §2.20](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md#220-relative-dualising-complexes-and-modules-serre-duality-curve-comparison)

| 関連する一般理論 | 直接利用する供給 | 本ロードマップで追加する内容 | 担当 |
| --- | --- | --- | --- |
| [ClusterAlgebras](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/ClusterAlgebras/README.md) §§0.1–0.2、1.1–1.2、3.1–3.4 | Laurent 環、交換行列、係数種、減算なし・熱帯係数、変異の対合性と語、Mathlib の `Quiver.Path` | 行列の規約辞書、整数局所化と任意体への係数変更、混合した路の X 解釈、X だけで割る群、境界付値との比較 | 0.1–0.5、5.4–5.5 |
| [IntegralLattices](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/IntegralLattices/README.md) Layer 0 と判別群・overlattice の基礎 | 原始性、完全双対、直交分解、radical quotient、有理化、A 型格子、指数平方公式、minor ideal と Smith 係数 | サイクル格子との比較、境界に適合する反転対合、Picard の商と電荷の余核、等方超平面上の剛性と作用の忠実性 | 1.1–1.4、3.2、3.5 |
| Tau Ceti の対角化可能群と可除群 | 指標スキームと点、格子写像、群スキームの核、指標の延長、群環単元と文字 twist、並進、有限可換群の双対性 | トーラス自己同型の分解、中心の整列、有限指数での deck map の分類、評価の支配性、点ごとの比較から全空間の射の等号への接続 | 0.1、3.3 |
| [SchemeAndStackFoundations](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/SchemeAndStackFoundations/README.md) §2.6 と Tau Ceti のコホモロジー・微分形式 | coherent kernel、twist の生成、射影空間の全次数 cohomology、有限支持の局所長、acyclic pushforward、射影公式、最高次微分形式 | 次元 ≤2 の射影支持への有限性・消滅の接続、点 blowup の χ・H² 比較と有効性 | 2.0、2.2–2.3 |
| 同 §§5.9–5.10 | Weil–Cartier–Picard と有効性の辞書、素因子展開、正則曲面の Picard excision、完全線形系の集合、Euler 標数による曲面交点、特異曲線次数、局所長と非負性 | section と因子・線形系の比較、曲面交点と制限次数の比較・双線形性、blowup の Picard 分解への適用、有理曲面 RR・正錐・Nakai | 2.1–2.4、4.1–4.2、5.1 |
| [NeronModelsAndSemistableAbelianVarietiesPartII](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/TauCetiRoadmap/NeronModelsAndSemistableAbelianVarietiesPartII/README.md) §§1.8、4.0 と SchemeAndStackFoundations §4.9 | Rees blowup・chart・普遍性・`blowupMap`・flat base change・固有変換、Cartier 中心の blowup 同型、正則列の associated graded と twist、例外曲線の交点、既にある縮約に沿う射の下降、節点の枝・正規化 | 点中心と例外線束の比較、Picard・標準束・cohomology の公式、有限列の輸送・共通解消・曲面縮約、節点サイクルの可逆層の降下 | 2.2–2.4、3.1、3.4、4.5 |
| [AnalyticToricGeometry](https://github.com/TauCetiProject/TauCetiRoadmap/blob/main/Completed/AnalyticToricGeometry/README.md) Layer 0 | 有限扇、代数的実現、扇の射、密トーラスと作用、星状細分 | 階数 2 の曲面・境界・交点・Picard、スキームの点 blowup との比較、トーリック模型と表示変更 | 2.5、3.1–3.2、5.1–5.5 |

関連ロードマップの章は共有する一般論の範囲を示す。使用する宣言とその仮定は以下の供給契約に記す。境界サイクル、表示、周期、幾何的実現は供給契約の対象の上に定義する。

### 数学的な境界

最終的に決定する群は、原始的 nef 平方零の反標準節点サイクルのトーリック表示から得られる、有限ラベル格子上の X 有理写像群である。補助理論の範囲は各項で指定し、その対象をこの最終条件に限定しない。量子化、散乱図、全モジュライスタック、楕円曲線の解析的一意化、全ての型の Weyl 群像・Cremona 群の一覧、任意の指定した特殊周期での自己同型群の分類は含めない。任意の二つの特殊な端点の間で語が存在するための全 chamber 条件も含めない。

[FG] §1.2.5 は A と X の双方で自明な語による商を定義している。本書の商との一致は仮定せず、変異公式だけを共用する。[Mizuno] の自由被覆は周囲の群が有限生成とは限らないため、その指標スキーム上の群と本書の T(A) 上の群も同一視しない。[BGM] Theorem 3.1 と [Mizuno] Theorem 3.35 の部分群・単射の構成を、群全体の決定の代わりには使わない。

### 再利用する基本定理の受入仕様

個々の成果は、主定理から独立して利用できる次の出口を持つ。これらは補足的な一般化ではなく、それぞれの担当項目の一部である。

| 対象 | 基本 API と比較定理 | 担当 |
| --- | --- | --- |
| 指標トーラスと語 | 格子写像の反変性、恒等・合成・基底変更、有理写像の等号、語の逆と商 | 0.1–0.4 |
| 境界付き整数格子 | 飽和、双対の延長、直交分解、反転対合、制限作用の忠実性 | 1.1–1.4 |
| 曲面の線束と blowup | 既存 Weil–Cartier–Picard・有効性・線形系の辞書と Picard excision の適用、指定 section の実零因子、特異曲線次数、引き戻し、交点、実際の例外 ideal と線束の比較、native `blowupMap` と有限列の自然性、cohomology 比較 | 2.0–2.3 |
| 表示と周期 | 標準標識、境界直交類と K の同型、中心整列、native 導手正方形と半局所自明化を使う可逆層降下、周期の比・自然性、節点操作との互換 | 3.1–3.4 |
| 曲面の錐と再構成 | native 閉曲線錐・双対錐・面の輸送への接続、根のない一般の対の Torelli と対象対への系、近接中心を許す Picard 自明自己同型の群 | 2.4、4.1–4.5 |
| 幾何的表示変更 | 指定射の正規化、一変異の全 Picard 同型、評価の可換式、語の合成と境界付値 | 5.1–5.5 |
| 幾何的実現 | 制限・恒等・合成、中心写像が双有理な場合の逆、中心ごとの射の比較を共通正則域へ移す補題、同じ X 写像と同じ作用の比較 | 3.3、6.0 |
| 格子作用の群 | native isometry subgroup と符号拡大、切断に沿う半直積、向き付き cycle graph の作用、退化階数 2 格子の δ 固定作用の生成 | 1.3、7.3–7.5、8.1–8.2 |
| トーリック曲面と ruling | 非空正則階数 2 扇の native Picard 表示、完備性を使う模型存在、star subdivision と点 blowup、rank 2 束の native relative Proj と実際の ruling の比較 | 2.5 |

境界を持たない点 blowup、内部中心が零のトーリック対、平方零でない Looijenga 対にも、対応する一般の定義と定理を適用できる。有限指数・根の不存在・豊富錐対応などの仮定は、必要な結論の箇所で保持する。

### Lean の受入仕様

[Suggested.lean](Suggested.lean) は 1.2 の格子の主要定理を、実体のある有限自由加群と双線形形式の上に述べる。単模性は Mathlib の `LinearMap.IsPerfPair`、原始性は `TauCeti.IsPrimitive`、特性元条件は `LinearMap.BilinForm.IsCharacteristic`、境界直交部分は既存の `orthogonal` で表す。これらはそれぞれ完全双対、δ を 1 に移す整数線形形式の存在、特性合同式という数学的条件を持つ。定義が結論を含む構造や、未指定の Prop を導入しない。

群同定と関係式判定を述べるには、0.2–0.3 の X 有理写像群、3.1 の標識付き表示、6.1 の幾何的引き戻しを先に構成する必要がある。これらは本書の構成目標であり、空の代替型による theorem は置かない。各項の「証明する」は、指定した命題と証明経路を Lean の定理として実装する義務を意味する。数学的結論を未指定の仮定として受け取ることや、形式化中に命題そのものを決め直すことを意味しない。格子定理の Lean 署名の型検査、数学的仕様と証明経路の確定、全定理の Lean 証明完了はそれぞれ別の受入条件である。

## Exact supplier contracts

### From Mathlib

有限自由整数加群には `Module.Free`、`Module.Finite`、`Basis`、`LinearMap`、`LinearEquiv` を用いる。整数格子は加法群であり、指標には `Multiplicative` による既存の型タグ、群環には `AddMonoidAlgebra`、関数体には `FractionRing`、その同型には `AlgEquiv` を用いる。群の反対群によって点写像と引き戻しの合成順を対応させる。曲面の carrier は `AlgebraicGeometry.Scheme` とその ℂ 上の構造射である。

格子の形式は `LinearMap.BilinForm`、対称性は `LinearMap.BilinForm.IsSymm`、等長同型は `LinearMap.BilinForm.IsometryEquiv`、単模性は `LinearMap.IsPerfPair` を直接用いる。後者の `B.toPerfPair` は L と整数双対を同定し、`LinearMap.IsPerfPair.of_bijective` が全単射性による既存の表現と結ぶ。署名の出典は `Mathlib/LinearAlgebra/BilinearForm/Basic.lean`、`Properties.lean`、`IsometryEquiv.lean`、`Mathlib/LinearAlgebra/PerfectPairing/Basic.lean` である。

| 使用箇所 | 既存宣言と source file | 正確な供給内容 | 本件で残す接続 |
|---|---|---|---|
| 1.1 の商 | `LinearMap.quotKerEquivOfSurjective`（`LinearAlgebra/Isomorphisms.lean`） | 全射線形写像の kernel による商と標的の線形同型、代表元での評価 | native radical quotient map の整数 kernel が ℤδ であること |
| 1.4、7.4 の制限 | `LinearEquiv.ofSubmodules`（`Algebra/Module/Submodule/Equiv.lean`） | 部分加群の image equality から制限同型とその評価・逆評価 | M と M⊥ の保存、ι_P との比較 |
| 1.3、7.3 | `GroupExtension.Splitting.semidirectProductMulEquiv`（`GroupTheory/GroupExtension/Basic.lean`）、`SemidirectProduct.mulEquivProd`（`GroupTheory/SemidirectProduct.lean`） | 任意の split group extension の半直積、作用が自明な場合の直積 | 符号の kernel と (g₀,−1) の切断、n≤2 の中央切断 |
| 6.4、7.2–7.3 | `MonoidHom.ker_eq_bot_iff`、`MulEquiv.ofBijective`、`MulEquiv.inv'`（`Algebra/Group/Subgroup/Ker.lean`、`Algebra/Group/Equiv/{Defs,Opposite}.lean`） | kernel による単射判定、全単射準同型からの群同型、inversion による反対群との同型 | 幾何的単射性・全射性と Conventions の反変性 |
| 7.3 の指数 | `Subgroup.index_ker`（`GroupTheory/Index.lean`） | kernel の指数が range の位数に等しい。群の有限性は不要。 | η の全射性、ℤˣ の位数 2 |
| 7.4 の ι_K | `Module.reflection`、`reflection_apply`、`reflection_apply_self`、`involutive_reflection`（`LinearAlgebra/Reflection.lean`） | 可換環上で ℓ(v)=2 なら x↦x−ℓ(x)v は線形対合、v↦−v | v=δ、ℓ(κ)=2(κ·f)、−g₀ の K への制限との一致と形式保存 |
| 7.5 の整数表示 | `LinearMap.toMatrix`・`toMatrix_comp`、`toMatrixAlgEquiv`・`toMatrix_mul`（`LinearAlgebra/Matrix/ToLin.lean`） | 異なる有限基底加群間の写像と合成の行列表示、自己準同型の場合の End と行列環の同型 | 語の整数輸送と完全不変量の計算の正当性 |
| 8.2 の生成 | `Subgroup.comap_map_eq_self`、`map_eq_range_iff`、`MonoidHom.map_closure`（`Algebra/Group/Subgroup/{Ker,Map}.lean`） | kernel を含む部分群はその image から回収される。像の生成と kernel の包含から全群の生成が従う。 | π₂,T の image と具体的 Picard kernel={id,r} |
| 3.2、3.3 の任意階数の包含 | `Submodule.smithNormalForm`（`Mathlib/LinearAlgebra/FreeModule/PID.lean`） | PID 上の有限基底 b と部分加群 S に、S と全体の基底・添字の単射・非零対角係数を与える。長方形と階数落ちを含む。 | charge の source/range と dual map に基底を運ぶこと、Picard 商との同一視 |
| 3.2、3.3 の全階数商 | `Submodule.smithNormalFormOfRankEq`、`Submodule.quotientEquivPiZMod`（前記 PID と `FreeModule/Finite/Quotient.lean`） | rank S=rank M の下で M/S を有限個の ZMod の積に同定する。 | 有限指数での s と deck group J の比較。一般の J の torus 因子は長方形 Smith の補座標から得る。 |
| 格子の指数 | `Submodule.natAbs_det_basis_change`（`Mathlib/LinearAlgebra/FreeModule/Finite/CardQuotient.lean`） | 同じ有限添字の基底を持つ S⊆M について、基底変換行列式の絶対値が `Nat.card (M ⧸ S)` に等しい。 | H↪N と Picard 側の飽和指数の同定 |
| 3.3 の指標延長 | `Module.Baer.of_divisible`（`Mathlib/Algebra/Category/Grp/Injective.lean`）、`Module.Baer.extension_property_addMonoidHom`（`Mathlib/Algebra/Module/Injective.lean`） | 可除アーベル群 Q への準同型は任意の単射 f:M→N に沿って延びる。有限生成・有限指数は不要。 | Tau Ceti の ℂˣ の rootability を Additive 化し、H↪N に適用する。 |
| 3.5 の単射性 | `padicValRat.mul`、`padicValRat.zpow`、`padicValRat.self` と素数の valuation 計算（`Mathlib/NumberTheory/Padics/PadicVal/Basic.lean`） | 有理数の積・整数冪の valuation と各素数での値 | 指定した基底値 1/2,pᵢ の valuation が係数を回収すること |
| 4.1 の閉曲線錐と nef 錐 | `PointedCone.hull`（`Mathlib/Geometry/Convex/Cone/Pointed.lean`）、`PointedCone.closure`（`Analysis/Convex/Cone/Closure.lean`）、`ProperCone.dual`、`mem_dual`、`dual_flip_dual`（`Analysis/Convex/Cone/Dual.lean`） | 非負スカラーによる cone hull、その閉包、連続完全対による双対と二重双対。`ProperCone` は閉じた非負スカラー部分加群であり、正定値性を要求しない。 | 有理曲面の B_ℝ を `LinearMap.toContinuousBilinearMap`（`Topology/Algebra/Module/FiniteDimensionBilinear.lean`）と完全双対の比較で `LinearMap.IsContPerfPair` に接続する。曲線類の cone hull と数値的 nef の比較、GHK の幾何的錐記述は 4.1。 |
| 4.2 の極線と有効分解 | `PointedCone.IsFaceOf`、`IsFaceOf.map_equiv`、`IsFaceOf.mem_of_sum_smul_mem`（`Mathlib/Geometry/Convex/Cone/Face/Basic.lean`） | 面の線形同型による輸送と、正係数の有限和が面に入る場合の各成分の所属 | 負曲線の生成する半直線が面であることは 2.4。4.2 は e²=−1 による rᵢ=−B(cᵢ,e)∈ℤ と 1=Σmᵢrᵢ から、移された類の唯一の既約代表を得る。 |
| 0.1、3.3 の有理写像 | `Scheme.functionField_isFractionRing_of_affine`（`AlgebraicGeometry/FunctionField.lean`）、`RationalMap.equivFunctionFieldOver`・`eq_of_fromFunctionField_eq`・`PartialMap.equiv_iff_of_isSeparated_of_le`（`AlgebraicGeometry/Birational/RationalMap.lean`） | affine 整域の関数体との比較、integral source と locally finite type target の generic-point spreading、generic point による等号検出、reduced source と relative separated target の共通稠密開上の等号 | 群環分数体と基底単項式、支配的引き戻しの反変性、中心ごとの W_c 上の等号 |
| 0.2 の混合した語 | `Quiver.Path`・`Path.comp`（`Combinatorics/Quiver/Path.lean`）、`Path.reverse`（`Combinatorics/Quiver/Symmetric.lean`）、`CategoryTheory.Paths.lift`（`CategoryTheory/PathCategory/Basic.lean`） | 任意 quiver の有限路と連結、`HasReverse` による逆順と `HasInvolutiveReverse` による二重逆、prefunctor から path category の functor への延長 | 各操作の端点と逆の X 写像、`(CommAlgCat k)ᵒᵖ` への解釈、native mutation-only word との比較。形式的逆路で X 同値を定義しない。 |
| 3.2 の核と分裂 | `LinearMap.quotKerEquivRange`（`LinearAlgebra/Isomorphisms.lean`）、`Module.Projective.of_free`・`LinearMap.exists_rightInverse_of_surjective`（`Algebra/Module/Projective.lean`）、`Module.dualProdDualEquivDual`（`LinearAlgebra/Dual/Lemmas.lean`） | kernel quotient と range、projective target を持つ全射の右逆、積の双対 | 自由な H による A≃K×H、v* の成分と Picard cokernel の比較 |
| 5.3 の有限射影直線 | `Projectivization.equivSubmodule`（`LinearAlgebra/Projectivization/Basic.lean`）、`card_of_finrank_two`（`LinearAlgebra/Projectivization/Cardinality.lean`） | 一次元部分空間との同値、有限体 k 上の二次元空間の射影化の点数が card(k)+1 | 原始電荷が避ける唯一の直線、p=2,3 の合同式による N の復元 |

有限核の自由性、Smith 基底、全階数の商の表示、原始元の基底延長を一括して新規義務にしない。原始元の基底延長は次節の Tau Ceti API、サイクル・charge・Picard の間の特殊な比較だけを 1.1、3.2–3.3 の実装目標とする。

### From Tau Ceti: 指標トーラスと変異

以下の供給は基準版 Tau Ceti の実装済み宣言であり、0.1–0.5 はそれらの native 型に本書の規約と X 有理写像を接続する。`ClusterAlgebras` ロードマップ全体の完成は依存条件にしない。

| 供給元 | 既存の対象・定理 | 本書で追加する比較 |
| --- | --- | --- |
| [DiagonalizableGroup/Basic](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Basic.lean)、[Scheme/Points](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Scheme/Points.lean) | 任意の可換群の群環とその代数点 `pointsMulEquiv`、有限生成可換群の実際の群スキーム `groupScheme` と `schemePointsMulEquiv`、`schemePointsMulEquiv_groupSchemeMap` | 有限自由加法格子 B の記法、AddMonoidAlgebra との比較、scheme functionField との同型 |
| [SplitTorus/Basic](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/AlgebraicGroup/SplitTorus/Basic.lean)、[LinearMap](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/AlgebraicGroup/SplitTorus/LinearMap.lean) | 座標格子 I→₀ℤ の torus points、`ofLinearMap` と `schemePointsMulEquiv_ofLinearMap` | 有限添字での Finsupp/関数表示の移送、中心写像 C の点上公式 |
| [MvPolynomial/Laurent/Basic](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/MvPolynomial/Laurent/Basic.lean)、[Polynomial](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/MvPolynomial/Laurent/Polynomial.lean) | `TauCeti.LaurentRing`、`unitX`、`aeval`、`aevalEquiv`、`algHom_ext`、`renameEquiv`、`MvPolynomial.toLaurent` の単射、Laurent 局所化 | 一般の有限自由格子の基底表示、分数体 ext、X 変異の局所化環との比較 |
| [ExchangeMatrix/Mutation](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/Cluster/ExchangeMatrix/Mutation.lean)、[Word](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/Cluster/ExchangeMatrix/Word.lean)、[Factorization](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/Cluster/ExchangeMatrix/Factorization.lean) | 行列変異の対合性・歪対称化の保存・reindex・否定、有限語と逆語、左右の整数対合による因数分解 | symmetrizer=1 と B=−ε の辞書、右因子の電荷核への制限、三種の辺を混ぜた型付き語 |
| [YSeed/Basic](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/Cluster/YSeed/Basic.lean)、[Word](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/Cluster/YSeed/Word.lean)、[Geometric](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/Cluster/YSeed/Geometric.lean) | `CoefficientSemifield` 上の係数変異・対合性・自然性・語、熱帯係数と extended matrix の変異の一致 | X 公式との規約比較、符号反転、任意体上の局所化同型、実際の境界付値との比較 |
| [CoefficientSemifield/Universal](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/Cluster/CoefficientSemifield/Universal.lean)、[Tropical](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/Cluster/CoefficientSemifield/Tropical.lean) | `Qsf` とその普遍性、`QsfZero.toFractionRing_injective`、`InfTropical` と `Trop` | 全 Qsf の通常の有理関数体への単射比較は標数零、任意標数への変異は整数局所化の係数変更 |
| [MonoidAlgebra/Units](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/MonoidAlgebra/Units.lean)、[CharacterTwist](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/MonoidAlgebra/CharacterTwist.lean)、[Grp/Translation](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/CategoryTheory/Monoidal/Grp/Translation.lean) | `AddMonoidAlgebra.unitsEquiv`（非零係数環・零因子なし・指数の `TwoUniqueSums`）、`charTwist`（単元値文字）、`leftTranslation`・`leftTranslationProd`（group object）と点上・逆の公式 | 有限自由格子の torus 自己同型の分解、`Over (Spec k)` 上の実際の並進と座標環の一致、順序付き中心の整列、評価写像との比較 |
| [MonoidAlgebra/CosetBasis](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/MonoidAlgebra/CosetBasis.lean)、[Mathlib FiniteAbelian/Duality](https://github.com/leanprover-community/mathlib4/blob/31ce06eaadf4a200c0e1407c5f10953cf606b8f8/Mathlib/GroupTheory/FiniteAbelian/Duality.lean)、[Polynomial/Splits](https://github.com/leanprover-community/mathlib4/blob/31ce06eaadf4a200c0e1407c5f10953cf606b8f8/Mathlib/Algebra/Polynomial/Splits.lean) | injective group map の coset basis、finite commutative G と `HasEnoughRootsOfUnity M (Monoid.exponent G)` の指標群濃度、非零で分解する多項式の拡大整域内の根の基礎体への所属 | 有限指数 torus cover の分数体比較。有限指数 s>0 と ℂ の代数閉性・標数零を渡し、定数根から deck 自己同型を J の並進へ同定する。 |
| [Morphisms/Separated](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Morphisms/Separated.lean)、[Smooth/RationalPoint](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Morphisms/Smooth/RationalPoint.lean) | reduced source と relative separated target に対する稠密な射族上の ext、separably closed field 上 smooth scheme の有理点の稠密性 | pointwise な Ψ_c の比較を共通正則域上の等号へ移し、評価の支配性で独立 X 変数へ戻す |
| [FittingIdeal/Matrix](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/RingTheory/FittingIdeal/Matrix.lean)、[SmithNormalForm](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/RingTheory/FittingIdeal/SmithNormalForm.lean)、[Matrix/MaximalMinor](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/LinearAlgebra/Matrix/MaximalMinor.lean) | 有限長方形行列の range の minor ideal、PID 上の全階数部分加群での Smith 係数積との一致、`Matrix.minorGcd` と基底変更 | 階数 2 の電荷の指数と小行列式の最大公約数の一致、三電荷の余因子の原始性、Picard 商の torsion との比較 |

指標の延長には `TauCeti.IsAlgClosed.unitsRootableByNat`（`TauCeti/FieldTheory/IsAlgClosed/Units.lean`）と `Additive.instDivisibleByNat`（`TauCeti/GroupTheory/Divisible.lean`）を使い、`AddGroup.divisibleByIntOfDivisibleByNat` で ℤ に関する可除性を得る。これを前節の `Module.Baer.of_divisible` とその `extension_property_addMonoidHom` に渡す。一般の H↪N について準同型が延びるので、3.3 の比較は延長の存在を再証明せず、その multiplicative 表記と選択差を記録する。

3.3 の核の座標環は [DiagonalizableGroup/Kernel](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Kernel.lean) の `kernelCoordinateIso` を p:H→N に適用して ℂ[N/H] と同定する。`moduleFinite_kernelCoordinate_iff` と `finrank_kernelCoordinate` は有限性と座標環の次元を与える。ℂ 点の個数と [N:H] の一致、既存の可除群への延長の適用、順序付き中心の安定化群としての解釈は 3.3 の比較定理である。[MonoidAlgebra/Finite](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Algebra/MonoidAlgebra/Finite.lean) の `TauCeti.MonoidAlgebra.mapDomainRingHom_finite_of_finite_quotient` により有限指数の場合の群環拡大の有限性を得て、分数体へ移す。

Hopf 商から点の核への接続には `TauCeti.CommHopfAlgCat.quotientPointsSubgroup_kernelHopfIdeal_eq_ker_mapPointsFunctor`（`TauCeti/Algebra/AlgebraicGroup/HopfIdeal/Points/Kernel.lean`）を使う。これは任意の可換 R 代数上で商の点の部分群と誘導射の核を同定する。さらに `TauCeti.CommHopfAlgCat.schemePointsAlgΓMulEquiv` と `schemePointsAlgΓMulEquiv_mapDomain`（`CommHopfAlgCat/SchemePoints.lean`）でスキームの点と比較する。0.1 の対角化可能群へ適用する有限生成性は H、N、N/H が満たし、H の全階数性は不要である。

[AlgebraicGeometry/Morphisms/Dominant](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Morphisms/Dominant.lean) の `Scheme.Hom.functionFieldMap`、`functionFieldMap_comp`、`isIso_functionFieldMap_of_isOpenImmersion`、`ext_of_functionFieldMap_eq` を 0.1、3.3、5–6 の比較に使う。最後の ext には source の reduced・irreducible、target の irreducible・基底上 separated、および二射の dominance と基底適合性を供給する。正則な支配的代表にはこの ext を適用できる。0.1 の generic-point spreading と有理写像自体の等号検出には前掲 Mathlib `RationalMap.equivFunctionFieldOver` と `eq_of_fromFunctionField_eq` を使う。`Birational/AlgHom.lean` の正則延長は全 stalk が valuation ring という仮定を持つため、一般の曲面の正則延長には使用しない。

### From Tau Ceti: 整数格子

`TauCeti.IntegralLattice` は有理ベクトル空間の full 整数 carrier と対称整数値形式を持ち、非退化性・正定値性は追加条件である（`TauCeti/LinearAlgebra/IntegralLattice/Basic.lean`）。1.2 は `L` と `B : LinearMap.BilinForm ℤ L` の上に直接述べ、判別式などの lattice API を使う時に `IntegralLattice.ofIntegralForm`、`ofIntegralForm.carrierEquiv`、`ofIntegralForm.carrierIsometry`（`IntegralLattice/Rationalization.lean`）で接続する。この変換は退化形式にも適用でき、K の非退化性を要求しない。

下表の `IntegralLattice/…` は `TauCeti/LinearAlgebra/IntegralLattice/…`、格子宣言は特記しない限り `TauCeti.IntegralLattice` namespace に属する。

| 使用箇所 | 既存宣言と source file | 供給内容と適用境界 | 本件で残す接続 |
|---|---|---|---|
| 1.1 の商格子 | `radicalQuotient`、`radicalQuotientMap`、`radicalQuotientMap_eq_zero_iff`、`integralForm_radicalQuotientMap`、`IsEven.radicalQuotient`、`signature_radicalQuotient`（`IntegralLattice/RadicalQuotient.lean`） | 任意の integral lattice の rational radical による商、その integral carrier、非退化性、偶性と符号数の下降。単模性は一般には供給しない。 | radical=ℚδ、整数 kernel=ℤδ、境界商の基底と飽和指数 |
| 1.1–1.2 の分裂の実体 | `orthogonalSumIsometryOfIsCompl`、`orthogonalSplittingIsometry` と評価式（`IntegralLattice/Orthogonal/Isometry.lean`）、`Isometry.orthogonalSum`（`Orthogonal/Sum.lean`）、`Isometry.neg`（`Isometry/Group.lean`） | 整数 submodules の直交直和を rationalized integral lattices の等長同型として構成。完全制限からの分裂。全体の非退化性は不要。 | U、U₀ の完全性、w₀ の整数性、g₀ の境界作用 |
| O(L) と制限 | `LinearMap.BilinForm.isometryGroup`、`isometryGroupEquivIsometryEquiv`、`isometryGroupCongr`、`TauCeti.BilinForm.IsIsometry.map_orthogonal`、`restrict`（`TauCeti/LinearAlgebra/BilinearForm/Isometry.lean`） | 形式保存線形自己同型の native subgroup、自己 IsometryEquiv との辞書、基底変更、直交補の保存と制限 | G⁺、Ĝ の境界条件、K 上への restriction hom |
| 7.5 の行列忠実性 | `Isometry.toIsometryMatrices`、`toIsometryMatrices_injective`（`IntegralLattice/Isometry/Matrix.lean`） | 有限整数基底での等長群→Gram-preserving 行列 monoid の単射準同型。退化格子にも適用可。 | 計算する基底と各語の整数行列。逆向きの全射性は K では仮定しない。 |
| 8.2 の退化格子 | `affineA1`、`affineA1_form_apply`、`affineA1_radical_eq_ker`、`affineA1RadicalQuotientIsometry`（`IntegralLattice/Examples.lean`）、`neg_carrier`、`neg_form`（`IntegralLattice/Scaling.lean`） | Gram [[2,−2],[−2,2]] とその radical、A₁ 商。形式の反転は carrier を保つ。 | 具体的 K と負の affineA1 の基底指定同型、δ 固定等長変換の整数表示 |
| 1.1、1.2、3.5 | `TauCeti.IsPrimitive`、`IsPrimitive.exists_basis`（`TauCeti/Algebra/Module/Primitive.lean`） | 原始性は v を 1 に移す整数線形形式の存在。有限自由整数加群の原始元を基底へ延ばす。 | δ と境界類の比較、3.5 の基底値の指定 |
| 1.1、1.2 | `LinearMap.BilinForm.IsCharacteristic`、`isCharacteristic_iff`、`IsometryEquiv.isCharacteristic_apply_iff`（`TauCeti/LinearAlgebra/BilinearForm/Characteristic.lean`） | `∀x, 2∣B(δ,x)−B(x,x)` と等長変換による保存。 | δ の幾何学的な特性元性と、平方 −1 の補正 |
| Mˢ の整数値双対の延長 | `Submodule.isTorsionFree_quotient_iff`（`TauCeti/LinearAlgebra/Quotient/Basic.lean`）、`Submodule.exists_isCompl_iff_isTorsionFree_quotient`（`LinearAlgebra/Submodule/Primitive.lean`） | 飽和と torsion-free 商の同値。Dedekind domain 上、全体が torsion-free で商が有限生成なら、torsion-free 商と整数加群としての直和分解が同値。 | Mˢ の飽和性を確認し、補部分加群への射影と係数線形形式を合成する。ここでは直交補を主張しない。 |
| L=U⊕U⊥ と完全性 | `LinearMap.BilinForm.isCompl_orthogonal_of_restrict_bijective`、`isPerfPair_restrict_of_isCompl_orthogonal`、`orthogonal_orthogonal_of_isCompl`（`TauCeti/LinearAlgebra/BilinearForm/Orthogonal.lean`） | 対称で完全な制限形式は直交補と分裂する。全体が完全なら、その直交因子も完全となる。 | Gram [[0,1],[1,−1]] の基底と完全性、δ⊥/ℤδ との同定 |
| carrier と単模性の辞書 | `IsUnimodular.isPerfPair_integralForm`、`isUnimodular_iff_isUnit_gramDet`、`isUnimodular_orthogonalSum_iff`（`IntegralLattice/Unimodular.lean`） | lattice の単模性、完全整数形式、Gram determinant の単元性を比較し、直交和の単模性を因子に分ける。 | 曲面の交点形式と U₀⊥ への適用 |
| A 型への比較 | `Isometry.ofGramMatrixEq`（`IntegralLattice/Gram.lean`）、`typeASimpleRootBasis`、`discriminant_typeARootLattice`、`typeADiscriminantGroupEquiv`（`IntegralLattice/RootLattice/TypeA/Basic.lean`） | Gram 行列の一致から等長同型。標準 A_r の判別式 r+1 と `ZMod (r+1)` の判別群。 | M/ℤδ の基底と負の Cartan 行列。既存 A 型は正の形式なので、符号を反転して比較する。 |
| 1.2 の隣接反射 | `typeAIsometryZeroSumLattice`、`typeAIsometryZeroSumLattice_typeASimpleRoot`（`IntegralLattice/RootLattice/TypeA/ZeroSum.lean`） | 標準 A_r と整数座標和零模型を、単純根を指定して等長同定する。 | 境界根の反射を隣接互換に移すこと、反射語の U⊥ への整数作用 |
| 1.1 の指数平方 | `IntermediateCarrier.IsIntegral.discriminant_mul_index_sq`、`index_sq_dvd_discriminant`（`IntegralLattice/Overlattice/Index.lean`）、`discriminant_eq_mul_relIndex_sq`（`IntegralLattice/Index.lean`） | 整数 overlattice の指数平方が判別式を割る。前者の整除定理と後者の指数公式に正定値性は不要。 | (M/ℤδ)ˢ を標準 A 型の `IntermediateCarrier` に移し、その指数を [Mˢ:M] と同定する。 |
| 1.1 の階数・符号数 | `finrank_orthogonalSum`、`signature_orthogonalSum`（`IntegralLattice/Orthogonal/Sum.lean`）と signature の既存 API | 直交和の階数と正・零・負の指数を計算する。 | signature(L)=(1,0,9)、signature(U₀)=(1,0,1) から U₀⊥ の rank8・負定値を得る。 |

`IntegralLattice.rootReflection` とその対合性・固定ベクトルの定理（`IntegralLattice/Isometry/Reflection.lean`）は平方 +2 の根を入力とし、非正定値・退化 lattice にも使える。平方 −2 の境界根には形式の符号を反転して使うか、既存 `Module.reflection` と `LinearMap.IsReflective` を直接使う。`LinearMap.BilinForm.Isometry.isometryGroupExtend` は体上の部分空間の延長であり、整数 carrier 保存までは供給しない。本件では根反射の整数性を保持して w₀ を構成する。

標準 A 型の Weyl 群と対称群の同型 `TauCeti.DynkinType.typeAWeylGroupEquiv`（`TauCeti/LinearAlgebra/RootSystem/Weyl/TypeA/Basic.lean`）も存在するが、その carrier は標準 root datum の Weyl 群である。1.2 の任意の整数形式 B に直接適用したものとして数えず、必要な境界根との比較を明示する。飽和の周期指標 χⱼ、j₀ の選択、g₀ の境界作用、Picard 商と charge cokernel の比較は引き続き本ロードマップの証明目標である。

`GroupExtension.ofSurjective`、`ofMulEquivKer`（`TauCeti/GroupTheory/GroupExtension/Of/Surjective.lean`）を符号の完全列に使う。`GroupExtension/Splitting.lean` の `Splitting.inl_conjAct`、`semidirectProductMulEquiv_apply`、`semidirectProductMulEquiv_symm_right`、`inl_semidirectProductMulEquiv_symm_left` と `splittingEquivOfMulEquiv` が、半直積の具体式と群同型に沿う切断の輸送を供給する。これらは有限群や可換 kernel を仮定しない。

`TauCeti.dihedralHom`、`range_dihedralHom`（`TauCeti/GroupTheory/SpecificGroups/Dihedral/Basic.lean`）は二つの対合を入力とする native `DihedralGroup n` から指定した群への準同型と、その像の生成を扱い、n=0 では無限二面体群にも使える。8.2 では K 作用群に適用し、π₂ 自身の平方を 1 と扱わない。`TauCeti.eq_add_one_or_eq_add_one_of_cycleGraph_adj` と `cycleGraph_adj_add_one`（`Combinatorics/SimpleGraph/CycleGraph.lean`）は 8.1 の隣接点の候補を供給する。全自己同型の二面体表示は、その上で新規に証明する橋渡しである。

### From Tau Ceti: 射影スキームとコホモロジー

以下のファイルは `TauCeti/AlgebraicGeometry/` 以下を指し、Tau Ceti の基準 commit `1bf97b4973827fc8b005ddbe5372e6f08a28ddbb` での供給である。2.0 の層は `F:X.Modules` と `SheafOfModules.IsQuasicoherent`、`SheafOfModules.IsFiniteType` を用い、局所 Noetherian 上で coherent 条件と同定する。射影性は `AlgebraicGeometry.Scheme.IsProjectiveOver`（`ProjectiveSpectrum/ProjectiveOver.lean`）、cohomology は `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology`（`Cohomology/Basic.lean`）、整数 twist は `AlgebraicGeometry.Proj.twistingSheaf`（`ProjectiveSpectrum/TwistingSheaf/Basic.lean`）を用いる。有限性は基底環上の `Module.Finite`、消滅は cohomology の型の `Subsingleton` として述べる。

| 用途 | 供給宣言とファイル | 仮定、出力、適用先 |
|---|---|---|
| affine 消滅と有限被覆上界 | `AlgebraicGeometry.Scheme.Modules.subsingleton_cohomology_succ_of_isAffine`（`Cohomology/Affine.lean`）、同 namespace の `subsingleton_cohomology_of_isAffineOpen_of_card_le`（`Cohomology/FiniteCover.lean`） | 後者は affine diagonal、quasi-coherent F、r 個の非空 finite affine cover を仮定して i≥r の消滅を返す。separated 性から affine diagonal を渡す。支持スキームの d+1 本の hyperplane-complement cover は 2.0 で供給する。 |
| 有限射の coherent pushforward | `AlgebraicGeometry.Scheme.Modules.isFinitePresentation_pushforward_of_isFinite`（`Modules/Quasicoherent/Pushforward/Finite.lean`） | f:X→Y finite、Y locally Noetherian、F qc finite type なら f_*F finite presentation。 |
| 全次数 pushforward 比較 | `AlgebraicGeometry.Scheme.Hom.cohomologyPushforwardBaseLinearEquivOfIsAffineHom`（`Cohomology/PushforwardAcyclic/Affine.lean`） | f affine、F qc、X,Y,f が同じ Spec R 上なら、全 n について Hⁿ(Y,f_*F)≃ₗ[R]Hⁿ(X,F)。有限射はこの特殊化。 |
| 射影公式 | `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.pushforwardTensorLeftIso`、`tensorPushforwardUnitIso`（`VectorBundle/ProjectionFormula.lean`） | 任意 f と有限局所自由 E に対して E⊗f_*F≅f_*(f*E⊗F)。線束は `InvertibleSheaf.toFiniteLocallyFree`（`VectorBundle/FiniteLocallyFree.lean`）に渡す。 |
| 高次射影公式と acyclic 比較 | `FiniteLocallyFreeSheaf.higherDirectImagePullbackIso`、`isZero_higherDirectImage_pullback`（`Cohomology/HigherDirectImage/ProjectionFormula.lean`）、`AlgebraicGeometry.Scheme.Hom.cohomologyPushforwardBaseLinearEquivOfIsZeroHigherDirectImage`（`Cohomology/PushforwardAcyclic/Linear.lean`） | Rⁿf_*O=0 なら有限局所自由 E の Rⁿf_*f*E=0。acyclic 比較は全正次数 Rⁱf_*F=0 を仮定して全次数の基底環線形比較を返す。2.2 の点 blowup は π_*O=O と Rⁱπ_*O=0 を先に供給する。 |
| finite twist epi と生成 | `AlgebraicGeometry.Proj.eventually_exists_generatingSections_tensor_twistingSheaf`、`eventually_exists_epi_free_tensor_twistingSheaf`（`ProjectiveSpectrum/TwistingSheaf/GlobalGeneration.lean`） | quasi-compact Proj、次数 1 の homogeneous basic opens による被覆、F qc finite type。十分大きい全 n で有限 generating sections と `free I ⊗ O(-n)→F` の epi を返す。 |
| ample の affine-section 入力 | `TauCeti.AlgebraicGeometry.LineBundleClass.IsAmple.exists_finset_isAffineOpen_nonvanishingLocus`（`LineBundle/Ample.lean`）、`AlgebraicGeometry.Scheme.Modules.eventually_exists_generatingSections_tensor_tensorPow`（`LineBundle/TwistedSections.lean`） | 前者は被覆ごとに異なる正の冪を許し、後者は一つの L 自身の affine nonvanishing cover を要求する。有限個の指数の共通倍数と剰余類 twist による接続は 2.0 に残す。どちらも Serre 高次消滅の宣言ではない。 |
| coherent kernel | `AlgebraicGeometry.Scheme.Modules.isFinitePresentation_kernel`（`Modules/FinitePresentation/Abelian.lean`） | X locally Noetherian、f:M→N、M qc finite type、N qc なら kernel f は finite presentation。大域への貼り合わせも既存。 |
| scheme-theoretic support | `AlgebraicGeometry.Scheme.Modules.exists_iso_pushforward_subschemeι_annihilator`、`isFinite_subschemeι_annihilator_comp`（`Modules/SchemeTheoreticSupport.lean`） | M qc、affine sections finite のとき M≅i_*G を ann(M) の閉部分スキームで与える。後者は support が有限、X→S locally finite type、S locally Artinian なら支持スキームが S 上 finite。局所長和との同定は 2.0 の接続目標。 |
| 有限支持層の局所長 | `TauCeti.Module.finrank_eq_finsum_finrank_localization_tensorProduct`（`TauCeti/RingTheory/Artinian/Finrank.lean`）、`TauCeti.finrank_eq_length_mul_finrank_residueField`（`TauCeti/RingTheory/Length.lean`）、`AlgebraicGeometry.Scheme.Modules.isLocalizedModule_germₗ`・`isBaseChange_germₗ`（`Modules/Quasicoherent/Stalk.lean`） | 第1は有限 k-代数 A と有限 A-加群 M、および整合する k 作用に対し局所化の次元の和を返す。第2は local k-algebra B と B-module の次元を `(length B M).toNat * dim_k κ(B)` とする。stalk 比較は quasi-coherent M と affine open を要求。2.0 は ann(F) の有限支持スキームと finite-type 条件から有限性・有限長を渡し、閉埋込の stalk の全射に沿う長さの不変性を使って χ(F)=Σ length(F_x) を得る。 |

射影空間では `TauCeti.SymmetricAlgebra.cohomologyZeroTwistingSheafLinearEquiv`（`Cohomology/ProjectiveSpace/TwistingSheaf.lean`）と `Module.Basis.subsingleton_cohomology_twistingSheaf_of_lt_card`、`nonempty_linearEquiv_cohomology_top_twistingSheaf`、`finite_cohomology_twistingSheaf`（`Cohomology/ProjectiveSpace/HigherCohomology.lean`）を使う。後二者は任意 commutative ring R 上の有限基底を仮定し、最上次数を全指数が負の Laurent monomials の自由加群と同定し、全 m∈ℤ・全 q∈ℕ の O(m) の有限生成 cohomology を供給する。有限性の定理では基底の型が `Nontrivial`、すなわち射影空間の次元が正であることを保持する。

`Module.Basis.subsingleton_cohomology_twistingSheaf_of_neg_card_lt`（`Cohomology/ProjectiveSpace/HigherCohomology.lean`）を ℙ² の d>−3 における H²(O(d)) の消滅に用いる。点 blowup 塔への適用には 2.2 の比較を使う。

`AlgebraicGeometry.Proj.segre` と `isClosedImmersion_segre`（`ProjectiveSpectrum/Segre.lean`）は任意係数環上の射影空間の積からの Segre 閉埋込みを供給する。2.0 は生成 section の積の線束を Aʳ と同定し、固定した very ample 束と Aʳ⊗H⁻¹ の大域生成から Aʳ の射影埋込みを得る。そこから剰余類 twist を通して任意の豊富 A の Serre vanishing へ進む。

`AlgebraicGeometry.Scheme.Modules.eulerCharBelow`、`eulerCharBelow_congr`、`eulerCharBelow_eq_add`（`Cohomology/EulerCharacteristic.lean`）を χ とその同型不変性・加法性に使う。定義された有限和から cohomology の有限性は得られず、加法性の各仮定を 2.0 から渡す。曲面では切断次数 3 と H³ の消滅を使用する。次元 ≤2 の射影スキーム上の coherent cohomology の有限性、必要な Serre vanishing、支持次元消滅は、上表の供給を組み合わせる比較定理として 2.0 で構成する。

### From Tau Ceti: 曲面と線束

以下のファイルは `TauCeti/AlgebraicGeometry/` 以下を指す。`TauCeti.AlgebraicGeometry.LineBundleClass`（`LineBundle/Class.lean`）の `Additive` を Picard 群に用い、`LineBundleClass.pullback` と `pullbackHom`（`LineBundle/Functoriality.lean`）を幾何的引き戻しとする。Cartier 因子との辞書は `TauCeti.AlgebraicGeometry.Scheme.CartierDivisor.toLineBundleClassHom`（`CartierDivisor/Picard.lean`）と、integral X に対する `classGroupAddEquivLineBundleClass`（`CartierDivisor/ClassGroup.lean`）を使う。

| 用途 | 供給宣言とファイル | 仮定と残る接続 |
|---|---|---|
| Weil–Cartier–Picard と有効性 | `TauCeti.AlgebraicGeometry.WeilDivisor.OrderSystem.ofScheme`（`WeilDivisor/Scheme/Principal.lean`）、`SchemeWeilDivisor.equivCartierDivisorOfUniqueFactorizationMonoid`、`isEffective_equivCartierDivisorOfUniqueFactorizationMonoid_iff`、`classGroupAddEquivLineBundleClassOfUniqueFactorizationMonoid`、同 `_divisorClass`・`_divisorClass_ofPoint`（`CartierDivisor/Factorial.lean`） | order system は integral・Noetherian、添字は `CodimensionOnePoint X`、有理関数群は `Additive X.functionFieldˣ`。後三種の比較には全 stalk の UFD 性を渡す。正則曲面では `IsRegular.uniqueFactorizationMonoid_stalk` と coheight≤2 で得る。素因子の正類は O(−C) の ideal class の逆元。有効性も比較済みで、曲面に曲線用 coheight≤1 の比較を流用しない。 |
| 線束の素因子展開と関係 | `TauCeti.AlgebraicGeometry.Scheme.CartierDivisor.weilToLineBundleClassHom_surjective`、`weilToLineBundleClassHom_single`、`ker_weilToLineBundleClassHom`（`CartierDivisor/Factorial.lean`） | integral・Noetherian・全 stalk UFD。native Weil 因子から Additive Pic(X) への準同型の全射性、素因子の像、kernel が principal subgroup であることを供給。2.1 の双線形性、2.5 のトーリック因子の表示へ適用する。 |
| 完全線形系の集合 | `WeilDivisor.OrderSystem.completeLinearSystem`、`mem_completeLinearSystem_iff_divisorClass`、`mem_completeLinearSystem_iff_exists_principalDivisor`、`completeLinearSystem_eq_of_divisorClass_eq`（`WeilDivisor/LinearSystem/Basic.lean`） | 任意の native order system 上の有効で線形同値な Weil 因子の集合。上記辞書で曲面の有効 Cartier 因子へ移す。H⁰ の射影化・section の評価・固定成分・基点の理論はこの宣言に含まれず、2.1–2.2 と各適用の接続目標である。 |
| 正則曲面の Picard excision | `LineBundleClass.pullback_surjective_of_isOpenImmersion_of_isRegular`、`pullback_eq_one_iff_exists_prod_of_isOpenImmersion_of_isRegular`（`CartierDivisor/Excision.lean`） | integral・Noetherian・regular な X、全点 coheight≤2、開埋込 j。後者は有限集合 s が像の外の codimension-one points 全体をちょうど列挙することを要求する。kernel は s の O(D) classes の整数冪の積。2.2 は Y∖{p} に空集合、X∖E に E の generic point を適用する。 |
| surface pairing | `TauCeti.AlgebraicGeometry.Chow.classIntersectionNumber`、`classIntersectionNumber_comm`（`Chow/SurfaceIntersection.lean`） | Picard 類上の χ(O)−χ(L⁻¹)−χ(M⁻¹)+χ(L⁻¹M⁻¹)、χ の切断次数 3。定義・降下・対称性が既存。properness・dim≤2・cohomology finite を仮定しない定義なので、2.0 の有限性・消滅、2.1 の restriction degree 比較と bilinearity を別に供給する。同ファイルの `Num` は現段階では quotient type であり、数値類の群構造の供給とは扱わない。 |
| 正則曲面の素因子 | `AlgebraicGeometry.Scheme.IdealSheafData.isEffectiveCartier_vanishingIdeal_closure_singleton_of_isRegular`（`EffectiveCartierDivisor/Factorial.lean`） | native IsRegular、全点 coheight≤2、codimension-one point の closure の reduced ideal を effective Cartier にする。正則局所環の高さ 1 の主性の再証明は不要。 |
| 標準束 | `TauCeti.AlgebraicGeometry.differentialForms`、`isInvertible_differentialForms`、`differentialFormsIsoDet`（`Modules/Differentials/Forms.lean`） | smooth relative dimension n の最高次 n-forms は invertible で det Ω と同型。n=2 を用いる。 |
| 特異曲線の次数 | `TauCeti.AlgebraicGeometry.LineBundleClass.eulerDegree_mul_of_isIntegral`（`CartierDivisor/Effective/Degree.lean`）、`intersectionNumber_mul_of_isClosedImmersion`（`IntersectionNumber/Basic.lean`） | 前者は proper integral dim≤1 と H⁰(O),H¹(O) finite、後者は proper X への closed immersion i、integral C、dim C=1、基底射の一致を仮定。C の regularity は要求しない。制限の Euler degree と native surface B の一致は 2.1。 |
| 局所長と非負性 | `LineBundleClass.intersectionNumber_inv_mk_toInvertibleSheaf_eq_finsum_of_isClosedImmersion`、`intersectionNumber_inv_mk_toInvertibleSheaf_nonneg_of_ne`（`IntersectionNumber/Basic.lean`） | 前者は proper curve と適切に交わる effective Cartier の ambient stalk 長の residue-degree 付き和。後者は regular coheight≤2 の異なる素因子。ideal の可逆層は O(-D) なので正の D には inverse class を取る。 |
| 曲線射の射影公式 | `LineBundleClass.intersectionNumber_pullback_of_finrank_eq`、`intersectionNumber_pullback_of_isDominant`（`IntersectionNumber/ProjectionFormula.lean`） | 前者は finite flat constant rank、後者は target curve の全 stalk が valuation ring であることを要求する。非 flat な特異曲線の normalization は供給範囲外で、conductor による degree comparison を 2.1 に残す。 |
| 正規化と δ | `AlgebraicGeometry.Scheme.genus_eq_add_finrank_globalSections_cokernel_of_surjective`、`finrank_globalSections_cokernel_unitToPushforwardObjUnit_eq_zero_iff_isIso`（`Curves/Normalization.lean`） | proper integral curves の finite modification、同じ基底体上。genus-drop は source の global functions が基底体から全射であることを要求する。δ=0 iff iso は有限性を内部で供給する。正規化の regularity と curve 性も同ファイル。2.3 は p_a と native genus を同定して適用する。 |
| genus zero の実際の同型 | `AlgebraicGeometry.Scheme.exists_iso_projectiveLine_of_genus_eq_zero_of_section`（`Curves/Genus/Zero.lean`） | `X.IsCurveOver k`、codimension-one stalk DVR、dim H¹(O)=0、Spec k→X が構造射の section なら X≅P¹_k を k 上に返す。ℂ 上の p_a=0 からこれらの条件を渡すのが 2.3 の接続。 |
| P¹ の線束分類 | `TauCeti.AlgebraicGeometry.projectiveLine.picardDegreeEquiv`、`eulerDegree_twistingSheaf`、`nonempty_iso_twistingSheaf_iff`（`LineBundle/ProjectiveLine.lean`） | 任意体 k で Additive Pic(P¹_k)≃+ℤ、degree O(n)=n、L≅O(n) iff degree L=n。2.2 の法束、2.5 の rank-two splitting に用いる。 |
| 例外曲線の carrier | `AlgebraicGeometry.Scheme.IdealSheafData.IsExceptionalCurveOfFirstKind`、`isExceptionalCurveOfFirstKind_iff_intersectionNumber`（`IntersectionNumber/ExceptionalCurve/Basic.lean`） | E effective Cartier、E≅P¹_κ、conormal≅O(1)。後者は指定した ℙ¹_κ 上での self-intersection −1 と比較する。点 blowup の例外 ideal への接続は 2.2、任意の滑らかな有理 (−1) 曲線への適用と収縮の存在・smooth target は 2.4 の目標。 |
| 階数 2 束の射影化 | `FiniteLocallyFreeSheaf.FixedRank`（`VectorBundle/FixedRank.lean`）、`toQuasicoherent`（`VectorBundle/Quasicoherent.lean`）、`gradedSymmetricAlgebra`・`gradedSymmetricAlgebraSectionsEquiv` と `_homogeneous`・`_naturality`・`_restrict`（`Modules/Quasicoherent/GradedAlgebra/SymmetricAlgebra/{Basic,Sections}.lean`）、`relativeProj`・`relativeProjToBase`・`isPullback_relativeProjCover`（`RelativeProj/Basic.lean`）、`relativeProjIsoProj`（`RelativeProj/Affine.lean`）、`restrictRelativeProjTwistingSheafIso`・`isInvertible_relativeProjTwistingSheaf_gradedSymmetricAlgebra`（`RelativeProj/TwistingSheaf.lean`） | actual locally free V を quasi-coherent sheaf として Sym と relative Proj に渡す。affine-section comparison は qc F と affine U のみを要求し、次数・枠変更・制限と両立する。chart pullback と affine 比較により local frame を ℙ¹_U へ移し、O(1) の chart 比較・可逆性も継承する。枠変更の graded isomorphism は irrelevant ideal を保つため `relativeProjMap_id/comp`（`RelativeProj/Map.lean`）で貼り合わせる。`isProper_relativeProjToBase_gradedSymmetricAlgebra`（`RelativeProj/Proper.lean`）にはさらに F の finite type を渡す。2.5 は rank 2、商規約 Proj(Sym V) とし、ruling の pushforward の局所自由性・評価・実際の同型を証明する。`VectorBundle/ProjectiveLine.lean` の split 束の次数計算を分裂定理とは扱わない。 |
| 指定した非零 section の零因子 | `InvertibleSheaf.mono_of_ne_zero_to_unit`（`LineBundle/Hom.lean`）、`isEffectiveCartier_imageIdealSheaf`・`mk_toInvertibleSheaf_imageIdealSheaf`・`exists_isEffectiveCartier_of_ne_zero`（`EffectiveCartierDivisor/ZeroLocus.lean`）、`Scheme.IdealSheafData.IsEffectiveCartier.toCartierDivisor`・`toLineBundleClass_toCartierDivisor`（`CartierDivisor/IdealSheaf.lean`） | 整な X 上の s≠0 から双対評価 φ:L⁻¹→O_X の単射性を得る。image の二定理は任意スキームと Mono φ を入力とし、実際の `φ.imageIdealSheaf` の Cartier 性と類を供給する。存在定理だけの結論は ∃I と類の一致であり、指定した section の零因子や自然性を同定する代わりには使わない。 |

有限台の層への tensor による Euler 標数には `AlgebraicGeometry.Scheme.Modules.eulerCharBelow_tensor_of_finite_support`（`VectorBundle/EulerCharacteristic.lean`）を用いる。有限台の quasi-coherent finite-type M と階数 r の局所自由 E に対して χ(E⊗M)=rχ(M) を各切断次数で与える。`TauCeti.AlgebraicGeometry.InvertibleSheaf.toFixedRankOne`（`VectorBundle/FixedRank.lean`）で r=1 とし、2.1 の conductor cokernel の比較に直接使う。代数閉体上の rational point には `IsLocallyClosed.exists_rationalPoint_mem`（`RationalPoint/Image.lean`）を使い、非空の locally closed 部分集合と有限型性を渡す。2.3 の genus-zero theorem にはこの点を構造射の section として渡す。

`AlgebraicGeometry.Scheme.Hom.existsUnique_comp_eq_of_universallyClosed`（`Descent/Contraction.lean`）は c:X→Y の universally closed 性・surjectivity、全 open U の `IsIso (c.app U)`、h:X→Z の fibre 上一定性を仮定して、唯一の g:Y→Z で c≫g=h を与える。2.2–2.4 は縮約後の射の下降と一意性にこの定理を使い、収縮射と構造層の比較は各項で構成する。

[Weil–Cartier–Picard の比較](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/CartierDivisor/Factorial.lean)、[正則曲面の Picard excision](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/CartierDivisor/Excision.lean)、[完全線形系の集合](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/WeilDivisor/LinearSystem/Basic.lean)、[ℙ¹ の正規化した trace](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Cohomology/ProjectiveLine/Differentials.lean)。

### From Tau Ceti: 点 blowup の構成と比較

以下は Tau Ceti の基準 commit [`1bf97b4973827fc8b005ddbe5372e6f08a28ddbb`](https://github.com/TauCetiProject/TauCeti/tree/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb) に含まれる供給である。ファイル名の `AG/` は `TauCeti/AlgebraicGeometry/`、`RT/` は `TauCeti/RingTheory/` を表す。2.2 の carrier は `AlgebraicGeometry.Scheme.IdealSheafData.blowup` とし、閉点のイデアル層を入力する。`blowup` は Rees 代数層の relative Proj として定義された `Scheme` であり、構成に Noetherian 性・滑らかさ・有限生成性は不要である。

| 使用箇所 | 既存宣言・native namespace・source file | 仮定と供給範囲、2.2 に残る接続 |
|---|---|---|
| blowup と構造射 | `AlgebraicGeometry.Scheme.IdealSheafData` の `blowup`、`blowupToBase`、`blowupChart`、`isPullback_blowupChart`、`isProper_blowupToBase_of_isLocallyNoetherian`（`AG/Blowup/IdealSheaf.lean`）、`isEffectiveCartier_comap_blowupToBase`（`ExceptionalDivisor.lean`）、`isIso_blowupToBase_restrict_of_disjoint_support`（`Restriction.lean`） | relative Proj と Rees 代数層、アフィン開集合への制限、例外イデアルの effective Cartier 性、中心外同型が既存。properness の instance は底の `IsLocallyNoetherian` を仮定する。`blowupChart` はアフィンな底の上の Proj 全体であり、その定義域自体をアフィンとはしない。 |
| 中心の輸送と自然性 | `Scheme.IdealSheafData.blowupMap`、`blowupMap_blowupToBase`、`eq_blowupMap`、`blowupLift_blowupMap`、`comap_comap_blowupMap`（`AG/Blowup/Pullback.lean`） | 任意の g:X′→X について Bl_{g⁻¹I}X′→Bl_I X、基底との可換性、一意性、例外 ideal の comap の一致を供給する。同型の g は flat なので同ファイルの `isPullback_blowupMap_of_flat` を適用し同型を得る。2.2–3.1 は ideal の等式による輸送、逆射・合成・順序付き tower の自然性をこれらから構成する。 |
| Cartier 中心の blowup | `Scheme.IdealSheafData.isIso_blowupToBase_iff`（`AG/Blowup/ExceptionalDivisor.lean`）、`Scheme.Hom.isEffectiveCartier_ker_of_comp_eq_id`（`AG/EffectiveCartierDivisor/Section.lean`） | 第1は任意 ideal sheaf I に対し `IsIso I.blowupToBase ↔ I.IsEffectiveCartier`。第2は f:X→S の閉じた section s、s≫f=id、その像を含む smooth relative dimension 1 の開集合を入力とし、s.ker の effective Cartier 性を返す。3.1 は S=Spec ℂ と滑らかな境界点へ適用し、既存の固有変換比較を通して現在の境界上の点を追跡する。 |
| 滑らかな曲面の局所座標 | `AlgebraicGeometry.SmoothOfRelativeDimension.exists_etale_affineSpace`（`AG/Morphisms/Smooth/EtaleCoordinates.lean`） | 基底 S 上の smooth relative dimension n の射に対し、各点の affine 開近傍 V と S 上の étale 射 V→𝔸ⁿ_S を供給する。n=2、S=Spec ℂ とし、原点への平行移動と近傍の縮小により閉点中心を (u,v) で表す。座標射の flatness を blowup の base change に渡す。 |
| 二つのアフィンチャート | `Ideal.affineBlowup`、`affineBlowup_eq_adjoin_of_span_eq`、`map_algebraMap_affineBlowup`、`isRegular_algebraMap_affineBlowup`（`RT/Ideal/AffineBlowup.lean`）、`reesAlgebra.awayEquivAffineBlowup`（`RT/ReesAlgebra/AffineBlowup.lean`）、`TauCeti.AlgebraicGeometry.affineBlowupι`、`affineBlowupι_preimage_basicOpen`、`iSup_opensRange_affineBlowupι`（`AG/Blowup/AffineCharts.lean`） | 可換環 A、I の元 a、`IsLocalization.Away a S` に対し、チャート環は S 内の部分代数 A[I/a]。そこで I の延長は正則元 a の生成する主イデアルとなる。I の生成族からチャート被覆と重なりを得る。2.2 は I=(u,v) として、正則列の条件から A[I/u]≅A[t]/(v−ut)、A[I/v]≅A[s]/(u−sv) を構造射・重なりとともに比較し、滑らかさを渡す。 |
| 例外曲線の次数付き環 | `RingTheory.Sequence.IsWeaklyRegular.associatedGradedEquiv`、`associatedGradedEquiv_homogeneousComponent`（`RT/Regular/AssociatedGraded.lean`）、`cotangentBasis`（`RT/Regular/Cotangent.lean`）、`isSymmetricAlgebra_ofCotangent`（`RT/Ideal/AssociatedGraded/SymmetricAlgebra.lean`） | 可換環 A の有限リスト rs が `IsWeaklyRegular A rs` を満たし `Ideal.ofList rs=I` なら、gr_I A≅(A/I)[Tᵢ]、次数成分との整合性、I/I² の指定基底を供給する。最後の定理は標準写像 `ofCotangent : I/I²→gr_I A` が対称代数の普遍性を満たすことを述べ、`IsSymmetricAlgebra.equiv` から Sym_(A/I)(I/I²)≅gr_I A を得る。2.2 は点の中心を生成する長さ 2 の正則列を供給し、A/I≅ℂ と次数付けを保った Proj の比較へ接続する。 |
| Rees 商から例外部分スキームへ | `reesAlgebra.toAssociatedGraded`、`ker_toAssociatedGraded`、`toAssociatedGraded_surjective`、`Ideal.ReesQuotient.equivAssociatedGraded`、`Ideal.ReesQuotient.range_of`（`RT/ReesAlgebra/AssociatedGraded.lean`）、`AlgebraicGeometry.Proj.isClosedImmersion_map`（`AG/ProjectiveSpectrum/ClosedImmersion.lean`） | 任意の可換環とイデアルについて Rees(I)/I Rees(I)≅gr_I A を A/I-代数として供給し、`range_of` が商の次数成分を同定する。全射な次数付き環準同型の Proj は閉埋込み。2.2 はこの商の Proj を実際の例外イデアルの `subscheme` と閉埋込み込みで同定する。前行との合成から E≅ℙ¹_ℂ を得る部分が接続目標である。 |
| conormal と整数 twist | `AlgebraicGeometry.Proj.twistingSheaf.chartIso`、`AlgebraicGeometry.Proj.isInvertible_twistingSheaf_of_iSup_eq_top`（`AG/ProjectiveSpectrum/TwistingSheaf/LocalTriviality.lean`）、`AlgebraicGeometry.Proj.pullbackTwistingSheafIso`（`Pullback.lean`）、`AlgebraicGeometry.Proj.twistingSheaf.tensorObjIso`、`AlgebraicGeometry.Proj.lineBundleClass_twistingSheaf_eq_zpow`（`TensorProduct.lean`） | 次数 1 の basic opens による被覆を仮定し、全 n∈ℤ の O(n) の局所自明化・可逆性・tensor の公式を供給する。引き戻しには `Proj.map` を定める irrelevant ideal の包含を満たす次数付き射を渡し、行先の Proj の次数 1 basic opens が被覆することを仮定する。相対版には `CategoryTheory.CommMon.isIso_relativeProjTwistingSheafMap_of_isGeneratedInDegreeOne`（`AG/RelativeProj/TwistingSheaf/Pullback.lean`）を用い、環の射の始域が degree one で生成されることを渡す。2.2 は Rees チャートの主イデアル (u)、(v) と O(1) の局所生成元を重なり上でも比較する。例外イデアルの可逆層は O(−E) なので、その E への制限を O_E(1) と同定し、双対を O_E(E)≅O_E(−1) に用いる。 |
| 有限生成の場合の射影表示 | `TauCeti.AlgebraicGeometry.submoduleBlowup.projectiveEmbedding`、`projectiveEmbedding_projToSpec`、`isProjectiveOver`（`AG/Blowup/Submodule/Projective.lean`）、`reesAlgebra_eq_coeffSubalgebra`、`reesAlgebra.grade`（`RT/ReesAlgebra/Grading.lean`）、`AlgebraicGeometry.Proj.mapIso`（`AG/ProjectiveSpectrum/Basic.lean`） | C-代数 B と有限集合 F⊆B に対し `submoduleBlowup C F` が C 上で射影的。B=C、I=span F に特殊化し、Rees 代数と `coeffSubalgebra` の等式から係数射と可換な Proj 同型を作り、`AlgebraicGeometry.Scheme.IsProjectiveOver.of_isClosedImmersion`（`AG/ProjectiveSpectrum/ProjectiveOver.lean`）で射影性を移す。この橋渡しは定義上の同一視ではなく 2.2 の比較定理とする。射影曲面の点 blowup の ℂ 上の射影性には、さらに大域的な射影表示を供給する。 |
| 大域的な射影表示への入力 | `AlgebraicGeometry.Scheme.IdealSheafData.isGeneratedInDegreeOne_reesAlgebra`（`AG/IdealSheaf/ReesAlgebra.lean`）、`TauCeti.AlgebraicGeometry.GradedQuasicoherentAlgebra.isClosedImmersion_relativeProjMap_gradedSymmetricAlgebraLift`（`AG/RelativeProj/ClosedImmersion.lean`） | Rees 代数層は degree one で生成され、relative Proj からその degree-one 部分の対称代数の relative Proj への射が閉埋込みとなる。2.2 は 2.0 の有限大域生成を I⊗Hʳ に適用し、graded twist による relative Proj の同型と有限生成 section の表示を経て X→Y×ℙᴺ を構成する。これは affine な底での前行の射影表示と整合させる追加比較である。 |
| 射の持ち上げと一意性 | `AlgebraicGeometry.Scheme.IdealSheafData.blowupLift`、`blowupLift_blowupToBase`、`eq_blowupLift`、`existsUnique_comp_blowupToBase_eq_of_isEffectiveCartier`（`AG/Blowup/UniversalProperty.lean`）、`isEffectiveCartier_iff_isInvertible_sheaf`（`AG/EffectiveCartierDivisor/Characterization.lean`） | 入力は実際の射 f:T→X と `(I.comap f).IsEffectiveCartier`。延長イデアルの層の可逆性から、f を因数分解する T→Bl_I X を唯一に得る。テンソル引き戻し f*I と構造層内の延長イデアルを区別する。有理写像の各チャートでの正則性・貼り合わせと、標的中心の延長イデアルの条件は 2.2 および各適用で証明する。 |
| 標準束の局所計算 | `TauCeti.AlgebraicGeometry.cotangentMap`、`cotangentMap_app_pullbackSectionsLE_d`（`AG/Modules/Differentials/Pullback.lean`）、`TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.pullbackExteriorPowerIso`（`AG/VectorBundle/ExteriorPower/Pullback.lean`） | 同じ Spec R 上の射について f*Ω→Ω と、切断上の d(a)↦d(f*a) を供給する。外積と引き戻しの比較は有限局所自由層に適用する。前契約の `differentialForms`・`isInvertible_differentialForms`・`differentialFormsIsoDet` に、始域と終域の smooth relative dimension 2 を渡す。2.2 は y=xt のチャートで dx∧dy=x dx∧dt を計算し、貼り合わせて ω_(Bl_p Y)≅π*ω_Y⊗O(E) を証明する。 |

基底変換には `AlgebraicGeometry.Scheme.IdealSheafData.isIso_blowupBaseChangeHom` と `isPullback_blowupMap_of_flat`（`AG/Blowup/Pullback.lean`）を使い、`[Flat g]` を渡す。開制限や étale 座標はこの範囲に入る。任意の g に対する `isClosedImmersion_blowupBaseChangeHom` の結論は比較射の閉埋込みであり、同型ではない。`flat_blowupToBase_comp`（`AG/Blowup/Flat.lean`）は `[IsDomain R] [IsBezout R] [Flat toBase]` から blowup の R 上の flatness を与える定理であり、blowup 射自体の flatness、滑らかさ、任意の基底環上の族の flatness は供給しない。

固有変換は `AlgebraicGeometry.Scheme.IdealSheafData.ker_blowupMap`（`AG/Blowup/StrictTransform.lean`）を使って、中心外の逆像の scheme-theoretic closure と同定する。閉埋込みに対する `isClosedImmersion_blowupMap` と合わせ、3.1 の境界の固有変換を実際の閉部分スキームとして扱う。同じ底 X 上の有限生成 ideal I,J には `exists_blowup_common_refinement`（`AG/Blowup/Product.lean`）が積 ideal の blowup と両者への proper な射を供給し、指定した中心外開集合上の同型を保つ。この供給は同一底上の中心の比較に使い、任意の無限近点列や指定双有理写像の点 blowup による解消は 2.2 の別の目標として保持する。

E≅ℙ¹_ℂ と conormal O(1) を得た後は、前契約の `Scheme.IdealSheafData.IsExceptionalCurveOfFirstKind` に実際の例外イデアルを渡す。`isExceptionalCurveOfFirstKind_iff_intersectionNumber`、`IsExceptionalCurveOfFirstKind.intersectionNumber_self`（`AG/IntersectionNumber/ExceptionalCurve/Basic.lean`）から自己交点を計算し、2.1 の restriction degree と surface pairing の比較に接続する。後者の一般形は −dim_k H⁰(E,O_E) であり、ℂ 上の同型でこの次元が 1 であることを渡す。Picard 群の直和分解、π*Pic(Y) と E の直交性、滑らかさ、大域的射影性は、これらの部品を接続する 2.2 の定理として残す。cohomology は前の射影公式・acyclic pushforward 契約を使い、π_*O=O と正次数の Rⁱπ_*O=0 を点 blowup のチャート計算から供給する。

供給宣言の主な参照先は [blowup と properness](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Blowup/IdealSheaf.lean)、[アフィンチャート](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Blowup/AffineCharts.lean)、[正則列の associated graded](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/RingTheory/Regular/AssociatedGraded.lean)、[Rees 商](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/RingTheory/ReesAlgebra/AssociatedGraded.lean)、[射影表示](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Blowup/Submodule/Projective.lean)、[twist の引き戻し](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/ProjectiveSpectrum/TwistingSheaf/Pullback.lean)、[普遍性](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Blowup/UniversalProperty.lean)、[微分の引き戻し](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/Modules/Differentials/Pullback.lean)、[例外曲線の交点](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/AlgebraicGeometry/IntersectionNumber/ExceptionalCurve/Basic.lean)である。

### From Tau Ceti: 節点サイクルの正規化

3.4 の節点条件には `TauCeti.AlgebraicGeometry.AtWorstNodalOfRelativeDimensionOne`（`TauCeti/AlgebraicGeometry/Curves/Node/Relative.lean`）を用いる。`AlgebraicGeometry.Scheme.isFinite_blowupToBase_singularLocus`、`surjective_blowupToBase_singularLocus`、`isRegular_blowup_singularLocus`（同 `Node/Normalization.lean`）は、任意体上の節点曲線の特異部分を blowup した射の有限性・全射性と始域の正則性を供給する。同ファイルの `natCard_preimage_blowupToBase_singularLocus_eq_two_of_mem_support` は分離閉体上で各節点の二枝を数える。ここでは ℂ と被約反標準境界へ適用する。

`AlgebraicGeometry.Scheme.dualGraph`、`branchPointEquiv`、`dualGraphVertexEquiv`、`dualGraphEdgeEquiv`（同 `Node/DualGraph.lean`）は、分離閉体上の `PrestableFamily` と滑らかな標点を入力に取り、正規化成分、節点、二枝を対応させる。D には proper・幾何学的連結・節点曲線の条件を渡して `PrestableFamily` を供給し、標点集合を空にする。幾何学的連結性は代数閉体 ℂ 上での連結性から得る。サイクルの向きはこの二枝を保持する有限グラフ上に追加するデータであり、自己節点を捨てる単純グラフへ変更しない。

`TauCeti.NodeAlgebra.branchSheafSequence`、`branchSheafSequence_shortExact`、`branchSheafSequenceMiddleIso`、`branchSheafSequenceRightIso`（同 `Node/BranchSequence.lean`）は split node R[x,y]/(xy) 上の加法的完全列と実際の pushforward の同定を供給する。一般の節点との比較には `Scheme.exists_etale_nodeAlgebra`（同 `Node/LocalNormalForm.lean`）を用いる。ℂ 上の特異点では étale な係数環の当該成分を選び、局所式 uv=h の h が 0 になることを確認する。導手の split model の計算には `TauCeti.NodeAlgebra.branchConductor_eq_prod`、`branchConductorQuotientEquiv`、`map_jacobianIdeal_eq_branchConductor`、`comap_branchConductor_eq_jacobianIdeal`（`TauCeti/RingTheory/Node/Conductor.lean`）を使う。

3.4 の actual conductor は `AlgebraicGeometry.Scheme.Hom.conductor`（`IdealSheaf/Conductor/Basic.lean`）である。有限射の導手と étale chart の比較には `conductor_eq_comap_of_isPullback`（`IdealSheaf/Conductor/BaseChange.lean`）を使い、有限な f,f′ と flat な底変換 g による pullback square を渡す。環の導手正方形には `Subring.conductor`・`conductor_subset`・`image_comap_subtype_conductor`（`TauCeti/RingTheory/Conductor.lean`）と `Subring.isPullback_quotient_comap_subtype`・`RingHom.quotientPullbackEquiv`（`TauCeti/RingTheory/Ideal/Quotient/Pullback.lean`）を使う。前者の pullback theorem は任意可換環の subring S と、S に含まれる ambient ideal C を入力とし、S≅B×_{B/C}S/(C∩S) を供給する。後者の具体的 ring equivalence には `ker f⊓I=⊥` と `J⊆f''I` を渡す。3.4 は実際の節点の R→B の単射性と native conductor の共通 ideal 条件を使い、導手商を ℂ と ℂ×ℂ に比較する。

線束の半局所自明化には `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.nonempty_iso_free_of_finite_maximalSpectrum`（`VectorBundle/Affine/Semilocal.lean`）を使う。仮定は Spec B 上の finite locally free sheaf、`Finite (MaximalSpectrum B)`、全点の rank=n であり、n=1 を用いる。単元の持ち上げでは、Mathlib `RingHom.isLocalHom_iff_ker_le_jacobson`（`Mathlib/RingTheory/Jacobson/Ideal.lean`）に B→ℂ×ℂ の全射性と kernel⊆Jacobson radical を渡す。3.4 の新規部分は、指定した枝の fibre identification による差写像の kernel の局所自由性、制限と降下の相互逆性と射の降下、大域化、向き付き積座標である。split node との比較は étale 局所で行い、既約節点へ Zariski 局所の二成分分解を要求しない。加法的完全列や環の pullback が、それだけで可逆層降下を完成させるとは扱わない。

### From Tau Ceti: 代数的トーリック曲面

既存の扇・スキーム・射をそのまま幾何の carrier とする。以下は基準版で供給される宣言であり、組合せ的正則性から本書で必要な曲面の定理への比較は 2.5 に置く。

| 供給元 | 既存の対象・定理 | 2.5・Layer 5 の追加目標 |
| --- | --- | --- |
| [Fan/Basic](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/Basic.lean)、[Regular](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Regular.lean) | `TauCeti.Toric.Fan`（有限性を含む）、`FanHom`、`Fan.IsComplete`、`Fan.IsRegular` | 階数 2 の原始隣接射線・巡回順と曲面境界の辞書 |
| [Fan/Scheme](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/Scheme.lean)、[Over](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/Over.lean) | `Fan.algebraicRealization`、開 chart 被覆、`FanHom.algebraicMap` と id/comp、ℂ 上の構造射 | 滑らかさ・分離性・射影性、Picard と境界交点 |
| [DenseTorus](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/DenseTorus.lean)、[Fan/DenseTorus](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/DenseTorus.lean) | 零錐の座標環と ℂ[Hom(N,ℤ)] の `denseTorusCoordinateRingEquiv`、`denseTorusι` の開埋込み、`denseTorusι_comp_algebraicMap` | det による N≅N∨ の規約比較、稠密性、単項式の境界因子と付値 |
| [DualSemigroup/Regular](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/DualSemigroup/Regular.lean)、[Fan/Normal](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/Normal.lean) | `regularDualSemigroupEquiv`、`isNormalScheme_algebraicRealization` | rank 2 の標準 chart への移送と scheme smoothness の証明 |
| [Fan/StarSubdivision](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/StarSubdivision.lean)、[Subdivision](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/Subdivision.lean) | 正則扇の `starSubdivisionAlong`、`isRegular_starSubdivisionAlong`、`support_starSubdivisionAlong`、`starSubdivisionAlong_isSubdivision`、`IsSubdivision.toFanHom` と細分射の `algebraicMap` | 階数 2 の二次元錐の固定点 blowup との基底上の同型、新射線と例外 Cartier 因子・被約境界・密トーラスの対応、共通の滑らかな細分と節点 blowup 列の比較 |
| [Fan/TorusAction/Action](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/TorusAction/Action.lean)、[Naturality](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/TorusAction/Naturality.lean) | native algebraic torus action と `FanHom` の同変性 | トーラス平行移動による中心整列と Picard 標識・周期の適合 |
| [Fan/AffineSpace/Scheme](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/AffineSpace/Scheme.lean)、[ProjectiveSpace/Proj](https://github.com/TauCetiProject/TauCeti/blob/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb/TauCeti/Geometry/Toric/Algebraic/Fan/ProjectiveSpace/Proj.lean) | `Fan.affineSpaceAlgebraicIso` と `Fan.projectiveSpaceToProj` の `IsIso` | ℂ²・ℙ² の実際の幾何への適用、Hirzebruch 曲面と模型存在 |
| torus の Picard 群 | `LineBundleClass.specEquivPic`・`subsingleton_spec`（`TauCeti/AlgebraicGeometry/LineBundle/Affine/Picard.lean`）、Mathlib `CommRing.Pic` の GCD-domain 自明性 instance（`Mathlib/RingTheory/PicardGroup.lean`） | native Spec の線束類と代数的 Picard 群を同定。後者は `[CommRing R] [IsDomain R] [IsGCDMonoid R]` を要求。階数 2 の character lattice の基底と `AddMonoidAlgebra.curryAlgEquiv`、`LaurentPolynomial.isLocalization`、`UniqueFactorizationMonoid.of_isLocalization` を用いて torus の Laurent 環が UFD であることを渡す。 |
| 境界による Picard 表示 | 前掲 `CartierDivisor/Excision.lean` と `ker_weilToLineBundleClassHom`、`Scheme.exists_unit_germToFunctionField_eq_of_ord_eq_zero_of_isIntegrallyClosed`（`TauCeti/AlgebraicGeometry/Scheme/Regular.lean`）、`AddMonoidAlgebra.isUnit_iff_exists_single`・`unitsEquiv`（`TauCeti/Algebra/MonoidAlgebra/Units.lean`） | excision には regular surface と全 codimension-one complement の有限列挙を渡す。正則単元の判定には integral・locally Noetherian、非空 open、そこにある全 stalk の integral closedness、全 codimension-one orders=0 が必要。単元分類は係数に `Nontrivial`・`NoZeroDivisors`、指数に `TwoUniqueSums` を要求。2.5 で残るのは native toric chart・境界との比較と character の位数公式であり、一般の Picard excision と単元分類は再構成しない。 |

`Fan.IsRegular` は原始射線が基底へ延びる組合せ条件である。既存の normality や開トーラス埋込みだけを、滑らかな射影曲面・境界の構成完了とはしない。2.5 の比較の出力を以後の曲面 API に渡す。

5.4 の t(u)=u+[det(u,v)]₊v は半平面ごとに整数線形であり、全体を一個の `FanHom` として扱わない。必要な直線に適合した階数 2 の扇を取り、各半平面の整数 transvection による像錐を `Fan.ofCones` で束ね、面・交わり・正則性を保つことを証明する。その上で実際の基本変換、X 有理写像と全 Picard 作用の比較を行う。

### 契約の基準となる版

| 対象 | 基準版 |
| --- | --- |
| Lean | [v4.37.0-rc1](https://github.com/leanprover/lean4/releases/tag/v4.37.0-rc1) |
| Mathlib | [31ce06eaadf4a200c0e1407c5f10953cf606b8f8](https://github.com/leanprover-community/mathlib4/tree/31ce06eaadf4a200c0e1407c5f10953cf606b8f8) |
| Tau Ceti | [1bf97b4973827fc8b005ddbe5372e6f08a28ddbb](https://github.com/TauCetiProject/TauCeti/tree/1bf97b4973827fc8b005ddbe5372e6f08a28ddbb) |

各供給宣言はこの版の対象と型を契約の基準とする。文献の引用は数学的証明の参照先であり、Lean の axiom としての外部入力ではない。

## References

- **[FG]** V. V. Fock, A. B. Goncharov, *Cluster ensembles, quantization and the dilogarithm*, Ann. Sci. Éc. Norm. Supér. 42 (2009). [出版社公開 PDF](https://www.numdam.org/item/10.24033/asens.2112.pdf)。§1.2.2 (7)、§1.2.3 (12)、§1.2.4 (13) が変異、§1.2.5 が語の同一視の参照先。
- **[GHK-M]** M. Gross, P. Hacking, S. Keel, *Moduli of surfaces with an anti-canonical cycle*, [arXiv:1211.6367v5](https://arxiv.org/abs/1211.6367v5)、[著者公開 PDF](https://paulhacking.github.io/mlp.pdf)。Lemma 1.3、Theorem 1.8、Lemmas 2.1・2.5・2.7・2.8、Propositions 2.6・2.9、Corollary 2.10、Lemmas 2.13–2.15・4.5、Theorem 4.7 の証明。主な使用範囲は周期・中心再構成・自己同型核・根のない対の錐。
- **[GHK-Mirror]** M. Gross, P. Hacking, S. Keel, *Mirror symmetry for log Calabi–Yau surfaces I*, [arXiv:1106.4977v3](https://arxiv.org/abs/1106.4977v3)、[著者公開 PDF](https://paulhacking.github.io/mirror_symmetry.pdf)。この版の Proposition 1.3 がトーリック模型の存在を与える。
- **[GHK-C]** M. Gross, P. Hacking, S. Keel, *Birational geometry of cluster algebras*, [arXiv:1309.2573v2](https://arxiv.org/abs/1309.2573v2)、[著者公開 PDF](https://paulhacking.github.io/cluster.pdf)。式 (1.4)、Lemma 3.2、Proposition 5.4、Theorems 5.5–5.6 の局所幾何、電荷と周期。有限指数の全格子への延長は本書の補足 C で展開する。
- **[HKL]** P. Hacking, A. Keating, with an appendix by W. Lutz, *Homological mirror symmetry for log Calabi–Yau surfaces*, [arXiv:2005.05010v3](https://arxiv.org/abs/2005.05010v3)、[著者機関 PDF](https://api.repository.cam.ac.uk/server/api/core/bitstreams/14b8f6c3-49a3-4961-a139-d11093383ddc/content)。Appendix の Theorem 8.4 は指定されたトーリック収縮の因数分解と正則な部分合成の参照先。Definitions 8.1・8.5・8.10、Proposition 8.7、Lemmas 8.8–8.9 を中心の制約とリンクの局所公式に用いる。Proposition 8.11 に対応する減少は §5.1 の正切断による構成で示す。
- **[BGM]** M. Bershtein, P. Gavrylenko, A. Marshakov, *Cluster integrable systems, q-Painlevé equations and their quantization*, JHEP 02 (2018) 077。[出版社公開 PDF](https://link.springer.com/content/pdf/10.1007/JHEP02(2018)077.pdf)、[arXiv:1711.02063](https://arxiv.org/abs/1711.02063)。式 (2.9)、§3.1 冒頭、Theorem 3.1 と Remark 3.1、式 (3.1)–(3.3)。部分群包含と全群一致の区別を保持する。
- **[Mizuno]** Y. Mizuno, *q-Painlevé equations on cluster Poisson varieties via toric geometry*, Selecta Math. (2024)。[出版社公開 PDF](https://link.springer.com/content/pdf/10.1007/s00029-023-00906-2.pdf)、[arXiv:2008.11219](https://arxiv.org/abs/2008.11219)。Definitions 2.1・2.3・2.7・2.8・3.3、Lemma 3.6、Theorems 3.34–3.35。周囲格子と主張の全射性を本書と区別する。
- **[Sakai]** H. Sakai, *Rational surfaces associated with affine root systems and geometry of the Painlevé equations*, Comm. Math. Phys. 220 (2001)。[DOI](https://doi.org/10.1007/s002200100446)、[著者プレプリント](https://www.math.kyoto-u.ac.jp/preprint/99/10.ps)。§4 の (Cr1)–(Cr3)、§6 Theorem 26。二面体群の記号を比較するときは位数も明記する。
- **[Hacking-S]** P. Hacking, *583C Lecture notes (Compact Complex Surfaces)*, 2008, [著者講義録](https://paulhacking.github.io/surfaces.pdf)。§3.2 Theorem 3.5、§4.2、§5、Theorems 5.2–5.3、Propositions 7.1–7.3、Theorems 7.5・7.13–7.14、§10 pp.53–54。線束 RR、点 blowup と縮約の特殊形を使用する。
- **[Brosnan-S]** P. Brosnan, *Algebraic Surfaces*, [Theorem 2.1](https://www.math.umd.edu/~pbrosnan/notes/Surfaces/sect0007.html)、[Proposition 3.1・Corollary 3.2](https://www.math.umd.edu/~pbrosnan/notes/Surfaces/sect0016.html)、[Theorem 3.4](https://www.math.umd.edu/~pbrosnan/notes/Surfaces/sect0017.html)、[Theorem 4.40](https://www.math.umd.edu/~pbrosnan/notes/Surfaces/sect0039.html)。Theorem 2.1 は Nakai–Moishezon の主張、他の節は随伴・RR・Castelnuovo 収縮の代数的証明の参照先。
- **[Debarre-S]** O. Debarre, *Introduction to Mori Theory*, [著者講義録](https://perso.imj-prg.fr/wp-content/uploads/debarre-pub/M22.pdf), Theorem 2.28・Corollary 2.29 (pp.19–20)、Theorem 2.37・Corollary 2.38 (pp.23–25)、Corollary 3.4、§3.2 の Definition 3.5・Theorem 3.6・Lemma 3.7、§4.1 の Theorem 4.1 (pp.40–41)。射影コホモロジー、次数と交点、曲面の Nakai–Moishezon の証明を使用する。
- **[Vakil-S]** R. Vakil, *Complex Algebraic Surfaces*, [Class 16](https://math.stanford.edu/~vakil/02-245/sclass16A.pdf) と [Class 17](https://math.stanford.edu/~vakil/02-245/sclass17A.pdf), §§1–2。平方非負の有理曲線の存在と最小有理曲面の分類。分類の結論は Class 17, §2, pp.3–4。
- **[Stacks]** *The Stacks Project*: [Tag 01OF](https://stacks.math.columbia.edu/tag/01OF), Section 31.33；[Tag 0AGQ](https://stacks.math.columbia.edu/tag/0AGQ), Lemma 54.3.1；[Tag 0AGS](https://stacks.math.columbia.edu/tag/0AGS), Lemma 54.3.4；[Tag 0C46](https://stacks.math.columbia.edu/tag/0C46), Section 53.19；[Tag 0FVV](https://stacks.math.columbia.edu/tag/0FVV), Lemma 48.27.1(6),(7)；[Tag 0C2N](https://stacks.math.columbia.edu/tag/0C2N), Lemma 54.16.9(1)；[Tag 0C2I](https://stacks.math.columbia.edu/tag/0C2I)；[Tag 0C5R](https://stacks.math.columbia.edu/tag/0C5R), Lemma 54.17.1；[Tag 0C5S](https://stacks.math.columbia.edu/tag/0C5S), Lemma 54.17.2。

