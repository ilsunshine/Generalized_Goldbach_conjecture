"""Export real full-certificate samples and deliberate corruption regressions."""
from pathlib import Path
import gzip
import json

from export_full_tables import chain, csv_row

ROOT = Path(__file__).resolve().parents[1]
CACHE = ROOT/'tmp/full-cert-cache'


def main():
    with gzip.open(CACHE/'uniform-11.json.gz', 'rt') as stream:
        uniform = json.load(stream)
    with gzip.open(CACHE/'csv-11.json.gz', 'rt') as stream:
        row = json.load(stream)[0]
    with gzip.open(CACHE/'prime-certificates.jsonl.gz', 'rt') as stream:
        p, cert = json.loads(next(stream))
    points = uniform['chains'][0][2]
    source = f'''import GeneralizedGoldbach.FullCertificateKernel

namespace FullCertificateRegression
open GeneralizedGoldbach GeneralizedGoldbach.FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def sampleChain : List FactoredPoint := {chain(points)}
def sampleCSV : NatFiniteRow := {csv_row(row)}
def samplePrimes : PrimeTree := .node .empty ({p},({cert})) .empty

theorem samplePrimes_valid : PrimeTreeCertified samplePrimes := by
  change samplePrimes.all checkPrimeEntry = true
  decide +kernel

example : primeTest samplePrimes {p} = true := by decide +kernel
example : primeTest samplePrimes ({p} + 1) = false := by decide +kernel
example : checkFactors samplePrimes {p} [{p}] = true := by decide +kernel
example : checkFactors samplePrimes ({p} + 1) [{p}] = false := by decide +kernel

example : checkFactoredChain .empty 30 [2,3,5] 11 1100 15488000 46464000 3 10 (-1)
    sampleChain = true := by decide +kernel
example : checkFactoredChain .empty 30 [2,3,5] 11 1100 15488000 46464000 3 10 1
    sampleChain = false := by decide +kernel
example : checkFactoredChain .empty 30 [2,3,5] 11 1100 1 46464000 3 10 (-1)
    sampleChain = false := by decide +kernel
example : checkFactoredChain .empty 30 [2,5] 11 1100 15488000 46464000 3 10 (-1)
    sampleChain = false := by decide +kernel

example : checkNatFiniteRow .empty 100065 sampleCSV = true := by decide +kernel
example : checkNatFiniteRow .empty 100066 sampleCSV = false := by decide +kernel
example : checkNatRepresentation .empty 100065 1 1 sampleCSV.1 = false := by decide +kernel
example : (CertificateTree.empty : CertificateTree FactoredPoint).checkRange
    (checkOddEntry .empty 11 10 [2,5]) 0 242 = false := by decide +kernel
example : (CertificateTree.node .empty (0, []) .empty : CertificateTree FactoredPoint).checkRange
    (checkOddEntry .empty 11 10 [2,5]) 0 242 = false := by decide +kernel

#print axioms samplePrimes_valid
#print axioms GeneralizedGoldbach.FullCertificate.intervalChain_of_factored
#print axioms GeneralizedGoldbach.FullCertificate.uniformOdd_of_table
#print axioms GeneralizedGoldbach.FullCertificate.uniformEven_of_table
#print axioms GeneralizedGoldbach.FullCertificate.finiteWitness_of_table
end FullCertificateRegression
'''
    (ROOT/'checks/FullCertificates.lean').write_text(source, encoding='utf-8', newline='\n')
    print('Exported full-certificate regression samples.')


if __name__ == '__main__':
    main()
