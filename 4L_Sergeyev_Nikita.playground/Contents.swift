
import Foundation

enum EngineState{
    case start,stop
}
enum WindowsState{
    case opened, closed
}
enum Transmission{
    case sport
    case classic
}
enum Turbine{
    case isOn, isOff
}


class Car {
    let brand:String
    let year: UInt
    let trunkVolume: Float
    func engineStart() {
        self.engine = .start
    }
    func engineStop() {
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
    init(brand: String, year: UInt, trunkVolume:Float, engine: EngineState, windows: WindowsState){
        self.brand = brand
        self.year = year
        self.trunkVolume = trunkVolume
        self.engine = engine
        self.windows = windows
    }
    
}
class SportCar:Car{
    var trans: Transmission
    var turb: Turbine
    init(brand: String, year: UInt, trunkVolume: Float, engine: EngineState, windows: WindowsState, trans:Transmission, turb:Turbine) {
        self.trans = trans
        self.turb = turb
        super.init(brand: brand, year: year, trunkVolume: trunkVolume, engine: engine, windows: windows)
    }
    override func engineStart() {
        self.trans = .sport
        self.turb = .isOn
        self.engine = .start
    }
    
    
}

var car = Car(brand: "Volvo", year: 2014, trunkVolume: 1683,engine: .start, windows: .closed)
car.windows = .closed
car.engineStart()
print(car.brand,car.year)
var polestar = SportCar(brand: "Polestar", year: 2020, trunkVolume: 1000, engine: .stop, windows: .closed, trans: .classic, turb: .isOff)
polestar.engineStart()
print(polestar.turb,polestar.trans)

