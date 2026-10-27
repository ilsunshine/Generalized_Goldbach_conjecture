# 原始重建数据

这些数据按论文中的有限条件独立重建，不是原稿缺失附件的原件。`manifest.json` 记录原始输入的 SHA-256、精确参数、候选数量与最大值。

| 文件 | 内容 |
| --- | --- |
| `rebuilt_uniform.json.gz` | 13 个辅助素数的统一偶链和奇见证；1770208 个链系数、32492 个奇见证 |
| `rebuilt_small.json` | q=3,5 的链和奇见证，q=7 的两阶段链与奇见证 |
| `rebuilt_finite.csv` | 149753 个有限候选，每个候选的三个正分解见证 |

面向阅读的六份 CSV、论文和独立标准库检验器在 [proof/](../proof/README.md)。本目录保留生成器的原始输入，使 Lean 证书来源与重建过程可复现。有限 CSV 在 `proof/data/finite_witnesses.csv` 中另有一份逐字节副本。

统一数据每个条目为 `q,d,ell,T,chains,odd`。偶链 `[R,s,js]` 的实际点是 `n=d*ell*j`，其类为 `d*R mod d*(q-1)*q`；奇记录 `[r,s,k]` 的实际参数为 `A=d*k`，保存的是 k 的模 q² 类。小证书链直接保存实际 n，奇见证直接保存 A。具体数学条件见 `proof/verify.py` 的逐文件注释。

正式证书已全部进入 Lean：小证书位于 `GeneralizedGoldbach/SmallCertificates/`；全量统一链、奇见证与 CSV 位于 `GeneralizedGoldbach/LargeCertificates/`。证书检查器的正确性和主定理的依赖由严格脚本审核，Python 输出不作为受信任公理。

## 外部重建与交叉核验

在项目根目录执行：

```powershell
python proof/verify.py
```

这一步不需要 NumPy。需要使用原始重建器或另一种独立核验时，安装 NumPy 后运行：

```powershell
python -m pip install -r requirements-audit.txt
python scripts/verify_certificates.py
python scripts/test_certificate_rejection.py
```

另一种核验器重新建立最小素因子表，并独立扫描全部相关的 105 倍数来重建候选集合；核验报告写入被忽略的 `output/verification/`。错误回归会修改临时副本中的符号并更新散列，确认数学检查仍能拒绝错误，正式数据保持不变。

重新生成原始输入使用 `python scripts/rebuild_certificates.py`；再用 `python scripts/sync_proof.py` 导出六份 CSV。大证书生成顺序为 `prepare_full_certificates.py`、`export_full_primes.py`、`export_full_tables.py`、`export_full_assembly.py`；中间缓存写入被忽略的 `tmp/full-cert-cache/`。生成器不是信任根，输出修改后必须重新运行全部 Lean 严格检查。
