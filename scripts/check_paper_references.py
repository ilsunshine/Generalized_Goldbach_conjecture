"""Check manuscript labels against Lean comments; this does not check proofs.

After compiling an edited manuscript, --sync refreshes existing comment references,
the source/number registry, and the readable crosswalk. Ordinary checking needs no
TeX installation or generated auxiliary files. --aux additionally checks the local
compiler's actual numbering.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re

ROOT = Path(__file__).resolve().parents[1]
REGISTRY = ROOT / 'checks/paper-references.json'
AUX = ROOT / 'latex/build/main.aux'
PAPER = ROOT / 'proof/paper.pdf'
KINDS = {'thm': '定理', 'lem': '引理', 'prop': '命题', 'cor': '推论',
         'def': '定义', 'eq': '式', 'sec': '节', 'app': '节', 'tab': '表'}
REF = re.compile(
    r'论文(?:第\s+(?P<section>[A-Z0-9.]+)\s+节|'
    r'(?P<kind>定理|引理|命题|推论|定义|表)\s+(?P<number>[A-Z0-9.]+)|'
    r'式\s+\((?P<equation>[A-Z0-9.]+)\))\s+\[(?P<label>[a-zA-Z0-9:.-]+)\]')
DECL = re.compile(r'(?m)^theorem\s+([^\s(:]+)')


def comment_spans(text: str) -> list[tuple[int, int]]:
    """Locate nested block/line comments without interpreting string contents."""
    spans, i = [], 0
    while i < len(text):
        if text[i] == '"':
            i += 1
            while i < len(text):
                if text[i] == '\\':
                    i += 2
                elif text[i] == '"':
                    i += 1
                    break
                else:
                    i += 1
        elif text.startswith('/-', i):
            start, depth, i = i, 1, i + 2
            while depth and i < len(text):
                if text.startswith('/-', i):
                    depth, i = depth + 1, i + 2
                elif text.startswith('-/', i):
                    depth, i = depth - 1, i + 2
                else:
                    i += 1
            if depth:
                raise ValueError('Unclosed Lean block comment')
            spans.append((start, i))
        elif text.startswith('--', i):
            end = text.find('\n', i)
            end = len(text) if end < 0 else end
            spans.append((i, end))
            i = end
        else:
            i += 1
    return spans


def code_without_comments(text: str) -> str:
    result, last = [], 0
    for start, end in comment_spans(text):
        result.extend((text[last:start], ''.join('\n' if c == '\n' else ' ' for c in text[start:end])))
        last = end
    result.append(text[last:])
    return ''.join(result)


def active_tex() -> dict[str, str]:
    sources = {}

    def visit(path: Path):
        name = path.relative_to(ROOT).as_posix()
        if name in sources:
            raise ValueError(f'Duplicate manuscript input: {name}')
        content = path.read_text(encoding='utf-8')
        sources[name] = content
        for child in re.findall(r'\\input\{([^}]+)\}', content):
            visit(ROOT / 'latex' / (child if child.endswith('.tex') else child + '.tex'))

    visit(ROOT / 'latex/main.tex')
    return sources


def compiled_numbers(path: Path) -> dict[str, str]:
    return dict(re.findall(r'\\newlabel\{([^}]+)\}\{\{([^}]*)\}', path.read_text(encoding='utf-8')))


def reference(label: str, labels: dict) -> str:
    item = labels[label]
    number, kind = item['number'], item['kind']
    if kind == '节':
        return f'论文第 {number} 节 [{label}]'
    if kind == '式':
        return f'论文式 ({number}) [{label}]'
    return f'论文{kind} {number} [{label}]'


def annotated_sources() -> list[Path]:
    # Generated large tables contain no numbered paper references.
    return [*sorted((ROOT / 'GeneralizedGoldbach').glob('*.lean')),
            *sorted((ROOT / 'GeneralizedGoldbach/SmallCertificates').glob('*.lean')),
            *sorted((ROOT / 'Supplement').glob('*.lean'))]


def collect_annotations(labels: dict) -> tuple[list[dict], int]:
    declarations, count = [], 0
    for path in annotated_sources():
        content = path.read_text(encoding='utf-8')
        spans = comment_spans(content)
        comments = []
        for start, end in spans:
            refs = list(REF.finditer(content[start:end]))
            for match in refs:
                label = match['label']
                if label not in labels or match[0] != reference(label, labels):
                    raise ValueError(f'Stale or unknown paper reference in {path.name}: {match[0]}')
            count += len(refs)
            comments.append((start, end, [m['label'] for m in refs]))
        if path.parent != ROOT / 'GeneralizedGoldbach':
            continue
        for match in DECL.finditer(code_without_comments(content)):
            preceding = [c for c in comments if c[1] <= match.start()]
            if not preceding or content[preceding[-1][1]:match.start()].strip() or not preceding[-1][2]:
                raise ValueError(f'Missing immediate paper reference: {path.name}:{match[1]}')
            declarations.append({'file': path.relative_to(ROOT).as_posix(),
                                 'name': match[1], 'labels': preceding[-1][2]})
    return declarations, count


def write_crosswalk(labels: dict, declarations: list[dict]):
    lines = ['# 论文与 Lean 编号对照', '',
             '阅读版为 [paper.pdf](paper.pdf)。LaTeX 源码保留在作者本地，不在仓库中发布。', '',
             '本表按编译后的实际编号生成。正文保留 Nagura 论证；正式尾部采用附录 B，'
             '有限数据采用附录 C。辅助引理的引用表示其展开或实现位置，不表示定理类型逐字相同。', '',
             '作者本地修改论文后运行 `pwsh -NoProfile -File latex/build.ps1`，'
             '会自动同步 PDF、散列和既有 Lean 注释编号。', '',
             '普通编号检查为 `python scripts/check_paper_references.py`；加 `--aux` '
             '还会对照本机编译器输出。普通检查不要求安装 LaTeX。', '',
             '## Lean 声明', '', '| 论文位置 | Lean 声明 | 文件 |', '| --- | --- | --- |']
    for item in declarations:
        refs = '；'.join(reference(label, labels).removeprefix('论文').split(' [')[0]
                        for label in dict.fromkeys(item['labels']))
        lines.append(f"| {refs} | `{item['name']}` | [{Path(item['file']).name}](../{item['file']}) |")
    lines += ['', '## 稳定标签', '', '| 标签 | 编号 | 类型 | LaTeX 源文件 |', '| --- | --- | --- | --- |']
    for label, item in labels.items():
        lines.append(f"| `{label}` | {item['number']} | {item['kind']} | "
                     f"`{item['file']}`（本地） |")
    (ROOT / 'proof/paper-crosswalk.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, default=REGISTRY)
    parser.add_argument('--aux', action='store_true')
    parser.add_argument('--sync', action='store_true')
    args = parser.parse_args()
    has_tex = (ROOT / 'latex/main.tex').exists()
    if args.sync and not has_tex:
        raise ValueError('--sync requires the author\'s local LaTeX sources and compiled auxiliaries.')
    sources = active_tex() if has_tex else {}
    hashes = {name: hashlib.sha256(text.encode('utf-8')).hexdigest() for name, text in sources.items()}
    locations = {}
    for name, content in sources.items():
        for label in re.findall(r'\\label\{([^}]+)\}', content):
            if label in locations:
                raise ValueError(f'Duplicate LaTeX label: {label}')
            locations[label] = name
    if args.sync:
        if not AUX.exists() or AUX.stat().st_mtime < max((ROOT / p).stat().st_mtime for p in sources):
            raise ValueError('Compile the current manuscript before --sync.')
        numbers = compiled_numbers(AUX)
        if set(numbers) != set(locations):
            raise ValueError('Compiler labels do not match active manuscript labels.')
        compiled_pdf = ROOT / 'latex/build/main.pdf'
        if not compiled_pdf.is_file() or compiled_pdf.read_bytes() != PAPER.read_bytes():
            raise ValueError('Synchronize the freshly compiled PDF to proof/paper.pdf before --sync.')
        labels = {label: {'number': numbers[label], 'kind': KINDS[label.split(':')[0]], 'file': name}
                  for label, name in locations.items()}
        for path in annotated_sources():
            content = path.read_text(encoding='utf-8')
            revised = content
            for start, end in reversed(comment_spans(content)):
                revised = revised[:start] + REF.sub(lambda m: reference(m['label'], labels),
                                                   content[start:end]) + revised[end:]
            if revised != content:
                newline = '\r\n' if b'\r\n' in path.read_bytes() else '\n'
                path.write_text(revised, encoding='utf-8', newline=newline)
        declarations, count = collect_annotations(labels)
        data = {'schema_version': 2, 'tex_sources': hashes, 'labels': labels,
                'paper': {'file': 'proof/paper.pdf', 'sha256': hashlib.sha256(PAPER.read_bytes()).hexdigest()},
                'declarations': declarations, 'comment_references': count}
        args.manifest.write_text(json.dumps(data, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
        write_crosswalk(labels, declarations)
    else:
        data = json.loads(args.manifest.read_text(encoding='utf-8'))
        if has_tex and data['tex_sources'] != hashes:
            raise ValueError('Manuscript sources changed; compile and synchronize paper references.')
        labels = data['labels']
        if has_tex and {label: item['file'] for label, item in labels.items()} != locations:
            raise ValueError('Paper label inventory does not match active sources.')
        declarations, count = collect_annotations(labels)
        if declarations != data['declarations'] or count != data['comment_references']:
            raise ValueError('Lean annotation inventory differs from the paper crosswalk.')
    if data.get('paper') != {'file': 'proof/paper.pdf', 'sha256': hashlib.sha256(PAPER.read_bytes()).hexdigest()}:
        raise ValueError('Published PDF changed; compile and synchronize paper references.')
    if args.aux:
        if compiled_numbers(AUX) != {label: item['number'] for label, item in labels.items()}:
            raise ValueError('Compiled paper numbering differs from the reference registry.')
    source_status = f'{len(sources)} local TeX sources' if has_tex else 'published PDF (local TeX not included)'
    print(f'Paper references passed: {source_status}; {len(labels)} labels; '
          f'{len(declarations)} theorem annotations; {count} comment references.')


if __name__ == '__main__':
    main()
