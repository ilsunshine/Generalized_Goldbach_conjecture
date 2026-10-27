# Hex 的可复现 Lean 4.30 环境

这里保存安装配置和兼容补丁，完整 Hex 项目在安装时下载到被忽略的
`third_party/hex-lean430/`。无需把已有 Hex 项目重复上传到本仓库。

| Lake 包 | 上游 | 固定提交 |
| --- | --- | --- |
| HexBasic | [hex-basic](https://github.com/leanprover/hex-basic) | `f3ec4bd78149d07b4fd2372010563334f285b37e` |
| HexArith | [hex-arith](https://github.com/leanprover/hex-arith) | `5ae42d0127e49eb3973ae01a5304a7adb2a9ee65` |
| HexPrimality | [hex-primality](https://github.com/leanprover/hex-primality) | `e89daa43f1c6f2038a59674598e2a5097e64c3df` |
| HexPrimalityTheory | [hex-primality-theory](https://github.com/leanprover/hex-primality-theory) | `58440896420904eb53045a3b886058987ab49d68` |

固定 Lean 为 `leanprover/lean4:v4.30.0`，Mathlib 提交为
`c5ea00351c28e24afc9f0f84379aa41082b1188f`。在仓库根目录执行：

```powershell
python scripts/setup_hex.py
python scripts/check_hex_sources.py
lake exe cache get
pwsh -NoProfile -File scripts/check.ps1
```

安装器下载上游提交的源码归档，应用 `patches/` 的四份补丁，恢复已记录的
LF/CRLF 行尾并逐文件核对 SHA-256。`SOURCES.json` 约束 79 份源码和兼容配置；
匹配的已有源码会复用，发生不同则拒绝覆盖。临时下载目录只位于指定的依赖根目录内。
只检查已安装版本可运行 `python scripts/setup_hex.py --check`。

`COMPATIBILITY.md` 保留原兼容副本的说明；其中的“本目录”指安装后的依赖目录。
兼容修改包括 Lean 条件表达式 API、已证明的 Newton 平方根接口、少量程序证明、
相对路径和固定 Mathlib 依赖。修改细节以补丁为准，数学证明仍须由 Lean 检查。
运行时优化和 C 接口不会代替本项目对证书的内核证明。

四个 Hex 上游项目采用 Apache-2.0；许可证副本为 [LICENSE](LICENSE)，
下载后的各项目也保留自己的版权头和许可证。补丁包含的上游内容保留相应权利。
本说明不给本项目其他原创内容指定许可证。
