import UIKit

var str = "Hello, playground"
import Foundation

enum EngineState{
    case start,stop
}
enum WindowsState{
    case opened, closed
}

struct SportCar {
    let brand:String
    let year: uint
    let trunkVolume: Float
    var useTrunkVolume : Float
    mutating func engineStart() {
        self.engine = .start
    }
    mutating func engineStop() {
        self.engine = .stop
    }
    var engine : EngineState{
            willSet {
                if newValue == .start {
                    print ("\(brand) двигатель запущен")
                } else {print("\(brand) двигатель заглушен")}
            }
    }
    var windows : WindowsState {
            willSet {
                if newValue == .opened {
                    print("\(brand) окна открыты")
                } else { print("\(brand) окна закрыты") }
            }
    }
}

var car = SportCar(brand: "Volvo", year: 2014, trunkVolume: 1683, useTrunkVolume: 443, engine: .start, windows: .closed)
car.windows = .closed
car.engineStart()
print(car.brand,car.year)
