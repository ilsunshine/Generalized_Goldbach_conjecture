# 不同素因子奇偶性的四种加法模式

设 `ω(n)` 为正整数 `n` 的**不同素因子个数**，`g(n)=(-1)^ω(n)`。本项目证明：对每个 `N ≥ 100000`，以及任意有序符号对 `(s,t) ∈ {−1,+1}²`，均存在正整数 `a,b`，使 `N=a+b`、`g(a)=s`、`g(b)=t`。

[论文 PDF](proof/paper.pdf) 给出第二种初等证明。论证以最小未整除奇素数 `q` 分类：小素数使用有限区间链和伸缩，中间的 13 个素数使用统一链与有限分解表，大素数使用素数乘积估计。附录 A、B、C 分别说明数学接口、实际采用的伯特兰替代路线和证书认证。该结论涉及素因子个数的奇偶性。

主定理入口为 [`four_patterns_main`](GeneralizedGoldbach/Main.lean)，完整量词版本为同文件的 `four_patterns_main_expanded`，由 [根模块](GeneralizedGoldbach.lean) 导出。Lean 证明中的两个加数严格为正，符号在整数中计算。所有正式证明只允许标准逻辑公理 `propext`、`Classical.choice`、`Quot.sound`；严格检查拒绝占位证明、新增公理和跳过内核检查的计算方式。

## 文件结构

| 路径 | 内容 |
| --- | --- |
| `GeneralizedGoldbach/` | 数学定义、刚性分解、区间链、伯特兰尾部、主定理 |
| `GeneralizedGoldbach/SmallCertificates/` | 小素数的有限证书及其证明 |
| `GeneralizedGoldbach/LargeCertificates/` | 325 个完整素性、链条及有限分解证书模块 |
| [`proof/`](proof/README.md) | 论文、六份 CSV、独立 Python 检验器、论文与 Lean 编号对照 |
| [`certificates/`](certificates/README.md) | 数据生成器使用的原始重建输入和散列清单 |
| `checks/` | 定义回归、原类型对照、错误证书拒绝、覆盖与公理审核 |
| [`environment/hex-lean430/`](environment/hex-lean430/README.md) | 四个 Hex 依赖的固定提交、兼容补丁及源码散列 |
| `scripts/` | 环境安装、证书生成、同步和验证脚本 |
| `Supplement/` | 伯特兰证明的兼容入口与独立审核 |

LaTeX 源码、编译中间文件、`docs/`、`tmp/`、本机 agent/skill 配置以及下载的 Hex 源码均由 `.gitignore` 排除。克隆后由安装脚本还原 Hex 环境，仓库不重复存放其完整项目。

## 配置与形式化验证

需要 Git、Python **3.11 或以上**、PowerShell 7（`pwsh`）及 [elan](https://github.com/leanprover/elan)。HexArith 的本地组件还需要 C 编译器；Windows 可使用与 Lean 兼容的 Clang/LLVM-MinGW。工具链固定为 **Lean 4.30.0**，Mathlib 固定提交为 `c5ea00351c28e24afc9f0f84379aa41082b1188f`，不应随意升级。

在仓库根目录依次执行：

```powershell
elan toolchain install leanprover/lean4:v4.30.0
python scripts/setup_hex.py
lake exe cache get
pwsh -NoProfile -File scripts/check.ps1
```

`lake-manifest.json` 已锁定依赖；日常构建不需要重新执行 `lake update`。安装脚本下载四个固定版本的 Hex 源码，应用本仓库保存的 Lean 4.30 补丁，核对全部散列，再放入被忽略的 `third_party/hex-lean430/`。已有匹配版本会复用；不同的本地源码不会被覆盖。详细版本见 [Hex 环境说明](environment/hex-lean430/README.md)。

全量首次构建涉及较大的计算证书，耗时及内存需求高于普通 Lean 项目。默认并行构建三个证书模块；内存较小时使用：

```powershell
pwsh -NoProfile -File scripts/check.ps1 -CertificateJobs 1
```

严格检查同时执行定义与正性回归、全部模块的导入覆盖、74 项保留声明的原类型对照、损坏证书拒绝、主定理依赖遍历及公理审核。生成报告写入被忽略的 `output/verification/`。原始目录另有两项未形式化且已停用的 Nagura 声明，保存在 `checks/original-statements.json` 中；主证明使用伯特兰路线，不依赖这两项。

## 阅读与独立检验数据

```powershell
python proof/verify.py
```

此命令仅使用 Python 标准库，读取 `proof/data/` 的全部六份 CSV，独立分解不同素因子，核对链的严格端点和重叠、每个剩余类的完整覆盖、奇数见证的上界，以及 149753 个有限候选的全部 449259 个明确分解。约需 104 MB 的最小素因子表及额外运行内存。脚本中的中文注释注明每类数据对应的论文位置与条件。

这些数据由数学条件独立重建，并非原稿中缺失附件的原件。Python 检验是独立的外部复核；正式数学结论由 Lean 中证书检查器的正确性定理和内核接受的证明项建立。重建原始输入或运行另一种 NumPy 交叉检查时，另安装 `requirements-audit.txt`，参见 [数据说明](certificates/README.md)。

## 本地论文维护

作者本地保留 `latex/main.tex` 及 `latex/build.ps1`。修改 LaTeX 后运行：

```powershell
pwsh -NoProfile -File latex/build.ps1
```

脚本使用 XeLaTeX 编译三遍；成功后自动将最新 PDF 复制到 `proof/paper.pdf`，刷新散列清单、论文与 Lean 编号对照，并同步已有 Lean 注释中的命题和公式编号。内容修改后仍应检查 PDF 排版及数学含义。自动同步不上传 LaTeX 源码；新克隆的仓库可直接阅读 PDF 和运行验证，无须安装 LaTeX。

如需从原始证书重新导出 CSV，作者在编译完成后运行 `python scripts/sync_proof.py`。编号同步和 CSV 导出都不替代数学与形式化审核。

## 贡献者与致谢

项目贡献者：**田草林、杨晨曦、Codex**。Codex 为 AI 辅助工具，在数学证明的讨论、补充和审核，以及 Lean 形式化、证书脚本和项目整理中均被使用，生成内容需要人工审阅。

本项目引用并使用 [Lean 4](https://github.com/leanprover/lean4)、[Mathlib](https://github.com/leanprover-community/mathlib4)，以及 [hex-basic](https://github.com/leanprover/hex-basic)、[hex-arith](https://github.com/leanprover/hex-arith)、[hex-primality](https://github.com/leanprover/hex-primality)、[hex-primality-theory](https://github.com/leanprover/hex-primality-theory) 等开源项目。`hex-lean430` 是本项目为固定工具链整理的 Hex 兼容环境；相关配置、兼容补丁及接入代码使用了 Codex 辅助生成。上游库及其数学贡献属于各自作者，来源、版本与许可证说明保存在环境目录中。

本仓库暂不为论文或本项目原创内容另行指定开源许可证。第三方依赖及相应补丁中的上游内容遵循各自许可证；私有仓库访问权限不等同于授予开源再分发许可。
