import Foundation
func squadEquation(a:Float,b:Float,c:Float) -> Any{
    let disc = pow(b,2) - 4*a*c
    if disc>=0
        {
        let x1 = (-b+sqrt(disc))/(2*a)
        let x2 = (-b/a)-x1
        return [x1,x2]
        }
    else {
        return "Equation don't have any solutions"
        }
}



func triangular (a:Float,b:Float)
{
    let c = sqrt(pow(a, 2)+pow(b, 2))
    let square = a*b/2
    let perimeter = a+b+c
    print ("Гипотенуза =  \(String(format: "%.2f", c)), Площадь = \(String(format: "%.2f", square)),  Периметр = \(String(format: "%.2f", perimeter))")
    
    
}

func Summary(sum:Float, percent:Float, years: UInt)->Float
{
    var fSum = sum
    for _ in 0...years-1
    {
        fSum+=(fSum*percent)/100
        
    }
    return fSum
    
}





squadEquation(a: 1, b: -4, c: 3)
triangular(a: 3, b: 4)
Summary(sum: 5000, percent: 5.5,years:5)
