# 论文与有限数据

[paper.pdf](paper.pdf) 是整理后的完整论文，保留附录 A、B、C。
[paper-crosswalk.md](paper-crosswalk.md) 列出论文编号与 Lean 声明的对应关系。

| CSV | 数据与论文位置 | 核验条件 |
| --- | --- | --- |
| [uniform_parameters.csv](data/uniform_parameters.csv) | §4 统一参数；§7 表 1 | 13 个素数、`d=rad(q−1)`、`T=128*d*q²*(q−1)²`、伸缩素数互素性 |
| [uniform_even_chains.csv](data/uniform_even_chains.csv) | §4 偶表、引理 4.2；附录 C.5 | `n=d*ell*j` 的同余和符号、严格首尾端点、相邻严格重叠、全部类与符号覆盖 |
| [uniform_odd_witnesses.csv](data/uniform_odd_witnesses.csv) | §4 奇表；附录 C.5 | `0<k<128*q²`、`k≡r mod q²`、`g(d*k)=s` 及全部键覆盖 |
| [small_even_chains.csv](data/small_even_chains.csv) | 命题 5.1、5.3 | q=3,5 的单阶段链；q=7 的两阶段链和伸缩整除条件 |
| [small_odd_witnesses.csv](data/small_odd_witnesses.csv) | 命题 5.1、5.3；引理 5.2 | 实际整数 A 的同余、整除、符号和分情况上界；另验三个例外 |
| [finite_witnesses.csv](data/finite_witnesses.csv) | 命题 7.1–7.3；附录 C.6 | 完整候选集与三个正分解；交换异号分解得到第四种有序模式 |

链的 `coefficients` 和 `points` 列保存 JSON 整数数组，每条链占一行。
统一链的 `residue` 是 R，满足 `ell*j≡R mod (q−1)q`；实际 n 的类是 dR。
小素数链中的 `points` 直接是实际 n；stage=0 对应 q=3,5，stage=1,2 对应 q=7。
统一奇表保存 k 的类，实际参数为 A=d*k；小奇表直接保存 A。

```powershell
python proof/verify.py
```

检验器仅依赖 Python 3.11+ 标准库，不导入生成器、原始 JSON 或 NumPy。
检查使用异常，`python -O proof/verify.py` 仍保留全部数学检查。
最小素因子表约 104 MB；大于筛表范围的整数完整试除至平方根。
`g(c*j)` 按素因子集合的并计算，重复因子只计一次。

统一偶表共 31672 条链、1770208 个点；统一奇表共 32492 项。
小证书共 184 条链、2203 个点、136 个奇见证。有限表共 149753 行，
每行的三个 a 分别提供负负、正正、负正分解，共 449259 个明确分解。
数据是按论文条件独立重建的，不能称为原稿缺失附件的原件。

`manifest.json` 记录 PDF、六份 CSV 以及原始重建输入的散列。
这些散列用于检测文件变化；独立数学检验还会核对全部条件与覆盖范围。
Python 通过不等同于形式化证明；对应的 Lean 证明位于
`GeneralizedGoldbach/SmallCertificates/`、`GeneralizedGoldbach/LargeCertificates/`
及证书正确性模块中。

作者本地 LaTeX 编译脚本成功后自动更新本目录的 PDF、散列及论文编号对照。
原始输入改变后用 `python scripts/sync_proof.py` 重新导出 CSV，再执行独立检验和 Lean 严格检查。
LaTeX 源码与编译中间文件不上传到仓库。
