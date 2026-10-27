"""Report the immutable 76-statement baseline, active proofs, and retirements."""
from datetime import date
from pathlib import Path
import json
import re

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / 'output/verification'
MOVED = {name: 'GeneralizedGoldbach/PrimeTailBasic.lean' for name in
         ('exists_next_prime', 'odd_prime_product_next', 'prime_tail_base_cases')}


def source_path(item):
    if item['name'] in MOVED:
        return MOVED[item['name']]
    original = item['file'].replace('\\', '/')
    if original.endswith('/FiniteClosure.lean') and item['name'] not in (
            'finite_witness_exists', 'four_patterns_of_finite_candidate'):
        return 'GeneralizedGoldbach/FiniteClosureBasic.lean'
    return original


def has_direct_placeholder(item):
    source = (ROOT/source_path(item)).read_text(encoding='utf-8-sig')
    match = re.search(rf'(?ms)^theorem {re.escape(item["name"])}\b.*?:= by\n(.*?)(?=^(?:theorem|def|structure|instance|end)\b|\Z)', source)
    if match is None:
        raise RuntimeError(f'Missing active theorem source: {item["name"]}')
    return bool(re.search(r'^\s+sorry\s*$', match[1], re.M))


def main():
    # Recheck the final generated sources after the long kernel build as well.
    from check_full_sources import main as check_full_sources
    check_full_sources()
    baseline = json.loads((ROOT/'checks/original-statements.json').read_text(encoding='utf-8-sig'))
    retired = json.loads((ROOT/'checks/retired-statements.json').read_text(encoding='utf-8'))
    report = json.loads((OUTPUT/'lean-proof-progress.json').read_text(encoding='utf-8'))
    by_name = {r['name'].removeprefix('GeneralizedGoldbach.'): r for r in report['theorems']}
    active = [r for r in baseline if r['name'] not in retired]
    if len(baseline) != 76 or len(active) != 74 or len(by_name) != 74:
        raise RuntimeError('Expected the immutable 76-statement baseline and 74 active axiom records.')
    if set(by_name) | set(retired) != {r['name'] for r in baseline}:
        raise RuntimeError('Active and retired theorem inventories do not match the original baseline.')
    direct = {r['name'] for r in active if has_direct_placeholder(r)}
    clean = {name for name, r in by_name.items() if r['axiom_clean']}
    if direct & clean:
        raise RuntimeError(f'Source placeholders reported as axiom-clean: {direct & clean}')
    dependent = set(by_name)-direct-clean
    main_clean = by_name['four_patterns_main']['axiom_clean']
    status = ('主定理的公理依赖已无占位；严格验收结果见下方实际日志。' if main_clean else
              '主定理仍有未完成依赖，不能宣告完成。')
    lines = ['# 原始 76 项定理的补证进度', '', f'报告日期：{date.today()}。', '',
        f'原始目录保持 76 项，其中 **{len(clean)} 项已证明**、**{len(dependent)} 项依赖未完成证明**、'
        f'**{len(direct)} 项直接占位**，另 **{len(retired)} 项 Nagura 声明归档且未形式化**。{status}', '',
        '“已证明”依据 Lean 实际公理报告，要求依赖仅含 `propext`、`Classical.choice`、`Quot.sound`。'
        '原始 74 项保留声明的类型逐项与不可变目录对照；归档两项不能计入证明完成数。', '',
        '## 主证明结构', '',
        '小辅助素数使用完整小证书；13 个中等辅助素数使用全量统一链和奇见证；'
        '阈值以下的有限候选由 CSV 三分解见证闭合；无限尾部使用 Mathlib 伯特兰定理和三项有限比较。'
        '最小未整除奇素数的存在性消除了局部条件，主目标仍是所有 `N ≥ 100000` 的四种有序符号模式。', '',
        '全量检查器、覆盖证明、数据规模及信任边界见项目 README 和 proof/README.md。'
        '它覆盖 1770208 个链点、32492 个奇见证、149753 行 CSV；所有计算证书由 Lean 内核重放。', '',
        '## 类型与源文件', '',
        '[原始目录](../checks/original-statements.json) 保留 76 项；'
        '[类型检查](../checks/OriginalStatements.lean) 对照 74 项保留声明。'
        '为避免检查器与存在性证明的循环依赖，统一证书定义移至 `CertificateDefinitions.lean`，'
        '有限候选定义及条件性引理移至 `FiniteClosureBasic.lean`，声明类型保持不变。', '',
        '未使用的 `nagura_interval`、`nagura_nat` 见 checks/original-statements.json 和'
        ' [归档登记](../checks/retired-statements.json)。主证明无需 6/5 素数区间定理。', '',
        '## 逐项状态', '', '| 序号 | 原始定理 | 状态 |', '| ---: | --- | --- |']
    for index, item in enumerate(baseline, 1):
        name = item['name']
        if name in retired:
            state, path = '归档，未形式化', retired[name]['archive']
        else:
            state = '已证明' if name in clean else '直接占位' if name in direct else '依赖未完成证明'
            path = source_path(item)
        lines.append(f'| {index} | [`{name}`](../{path}) | {state} |')
    lines += ['', '## 实际验证', '',
        '- 逐项公理依赖由 [Lean 报告](lean-proof-progress.json) 生成。',
        '- [全量证书回归](../checks/FullCertificates.lean) 包含实际样本及错误因子、符号、端点、缺失条目测试。',
        '- [集成审核](../checks/IntegratedInterfaces.lean) 检查主证明确实使用伯特兰、Hex、区间覆盖及两类数据接口，且没有活动占位。',
        '- 最终执行 `pwsh -NoProfile -File scripts/check.ps1`；实际退出状态和输出以本次运行结果为准。',
        '- 三份重建数据和原始声明目录受散列约束；历史原 PDF 的散列仅作为可选来源记录。', '']
    # Generated reports are local output and are not required repository inputs.
    OUTPUT.mkdir(parents=True, exist_ok=True)
    (OUTPUT/'lean-proof-progress.md').write_text('\n'.join(lines), encoding='utf-8', newline='\n')
    print(json.dumps({'original': 76, 'active': 74, 'axiom_clean': len(clean),
                      'dependent': len(dependent), 'direct': len(direct),
                      'retired_unproved': len(retired), 'main_axiom_clean': main_clean}, ensure_ascii=False))


if __name__ == '__main__':
    main()
