"""Generate exact original-type checks and the per-theorem axiom audit.

The saved declaration catalog is the 76-statement baseline before this proof pass.
Changing a bound variable name is harmless; changing a type fails Lean elaboration.
"""
from pathlib import Path
import json
import re

ROOT = Path(__file__).resolve().parents[1]
CATALOG = ROOT / 'checks/original-statements.json'


def split_statement(item):
    prefix = 'theorem ' + item['name']
    tail = item['statement'].removeprefix(prefix).strip()
    depth = 0
    for index, char in enumerate(tail):
        if char in '({[':
            depth += 1
        elif char in ')}]':
            depth -= 1
        elif char == ':' and depth == 0:
            return tail[:index].strip(), tail[index+1:].strip()
    raise ValueError(item['name'])


def main():
    catalog = json.loads(CATALOG.read_text(encoding='utf-8-sig'))
    assert len(catalog) == 76
    retired = json.loads((ROOT / 'checks/retired-statements.json').read_text(encoding='utf-8'))
    assert set(retired) == {'nagura_interval', 'nagura_nat'}
    catalog = [item for item in catalog if item['name'] not in retired]
    assert len(catalog) == 74
    checks = ['import GeneralizedGoldbach', '', 'open GeneralizedGoldbach', '',
        '/- 原始 76 项中 74 项保留的完整类型对照；@ 引用必须与原类型定义相等。',
        '两条未形式化的 Nagura 声明已明确归档，见 retired-statements.json。 -/', '']
    for item in catalog:
        binders, result = split_statement(item)
        type_text = f'∀ {binders},\n    {result}' if binders else result
        # This is a type annotation, so hypothesis binders do not occur in the
        # proof expression. Alpha-rename them to avoid unused-binder warnings.
        bound_names = set()
        for match in re.finditer(r'[({]\s*([\w\']+(?:\s+[\w\']+)*)\s*:', binders):
            bound_names.update(match[1].split())
        for name in sorted(bound_names, key=len, reverse=True):
            type_text = re.sub(r'(?<![\w\'.])' + re.escape(name) + r'(?![\w\'])', '_' + name, type_text)
        checks += [f'-- {item["name"]}', f'example : {type_text} := @{item["name"]}', '']
    (ROOT / 'checks/OriginalStatements.lean').write_text('\n'.join(checks), encoding='utf-8', newline='\n')
    names = ',\n    '.join(f'``GeneralizedGoldbach.{item["name"]}' for item in catalog)
    progress = '''import GeneralizedGoldbach
import Lean.Util.CollectAxioms
import Lean.Elab.Command

open Lean Elab Command in
run_elab do
  let names : Array Name := #[
    ''' + names + ''']
  let allowed : Array Name := #[``propext, ``Classical.choice, ``Quot.sound, ``sorryAx]
  let mut records : Array Json := #[]
  let mut clean := 0
  for name in names do
    let dependencies ← collectAxioms name
    let pending := dependencies.contains ``sorryAx
    unless pending do clean := clean + 1
    for dependency in dependencies do
      unless allowed.contains dependency do
        throwError "Unexpected dependency: {name} -> {dependency}"
    records := records.push (Json.mkObj [
      ("name", toJson name.toString),
      ("axiom_clean", toJson (!pending)),
      ("axioms", toJson (dependencies.map Name.toString))])
  let report := Json.mkObj [
    ("original_theorems", toJson (76 : Nat)),
    ("active_theorems", toJson names.size),
    ("retired_unproved", toJson (2 : Nat)),
    ("axiom_clean", toJson clean),
    ("depends_on_placeholders", toJson (names.size - clean)),
    ("theorems", Json.arr records)]
  liftM <| IO.FS.createDirAll "output/verification"
  liftM <| IO.FS.writeFile "output/verification/lean-proof-progress.json" report.pretty
  logInfo m!"Active original statements: {names.size}/76; axiom-clean: {clean}; placeholders: {names.size - clean}; retired unproved: 2."
'''
    (ROOT / 'checks/Progress.lean').write_text(progress, encoding='utf-8', newline='\n')
    print('Generated original-type checks and axiom audit for 74 active theorems; two unproved Nagura statements are archived.')


if __name__ == '__main__':
    main()
