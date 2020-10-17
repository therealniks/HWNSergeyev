import Foundation
func parity(value: Int)
{
    value % 2 == 0 ? print ("Число четное") : print ("Число нечетное")
}
func divThree(value:Int)
{
    value % 3 == 0 ? print ("Число делится на 3") : print ("Число не делится на 3")
}
func newArray(_ count:Int)->Array<Int>
{
    var nArray = [Int]()
    for i in 2...count
    {
        nArray.append(i)
    }
    return nArray
}
 func delElemArray()->[Int]
 {
    var nArray = newArray(100)
    nArray=nArray.filter{$0 % 2 != 0 && $0 % 3 != 0}
    return nArray
 }
func newFibonacchi(_ n:Int)-> Array<Int>
{
    var fibonacci :Array = [0,1,1]
    (3...n-1).forEach{ i in
        fibonacci.append(fibonacci[i-1]+fibonacci[i-2])
    }
        return fibonacci
}

func primeNumber(_ value:Int)->[Int]
{
    var primesArray=[Int]()
    var newArr = newArray(value)
    while let newP = newArr.first
    {
        primesArray.append(newP)
        newArr=newArr.filter{$0 % newP != 0}
    }
   return primesArray
}



parity(value: 14)
divThree(value: 16)
newArray(100)
delElemArray()
newFibonacchi(10)
print(primeNumber(100))
