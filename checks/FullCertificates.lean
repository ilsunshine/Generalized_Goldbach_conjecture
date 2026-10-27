import GeneralizedGoldbach.FullCertificateKernel

namespace FullCertificateRegression
open GeneralizedGoldbach GeneralizedGoldbach.FullCertificate
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def sampleChain : List FactoredPoint := [(51187,[17,3011]),(56137,[73,769]),(61747,[7,8821]),(67687,[113,599]),(74067,[3,7,3527]),(81217,[241,337]),(89247,[3,71,419]),(97497,[3,3,3,23,157]),(107067,[3,89,401]),(117737,[23,5119]),(129507,[3,7,7,881]),(142267,[113,1259])]
def sampleCSV : NatFiniteRow := ((4,[2,2],[13,43,179]),(6,[2,3],[3,33353]),(2,[2],[47,2129]))
def samplePrimes : PrimeTree := .node .empty (100003,(.pock 100003 [(2,0,(.small 2)),(2,0,(.small 3)),(2,0,(.small 7)),(2,0,(.small 2381))])) .empty

theorem samplePrimes_valid : PrimeTreeCertified samplePrimes := by
  change samplePrimes.all checkPrimeEntry = true
  decide +kernel

example : primeTest samplePrimes 100003 = true := by decide +kernel
example : primeTest samplePrimes (100003 + 1) = false := by decide +kernel
example : checkFactors samplePrimes 100003 [100003] = true := by decide +kernel
example : checkFactors samplePrimes (100003 + 1) [100003] = false := by decide +kernel

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
