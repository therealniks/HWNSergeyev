import Foundation

enum engineState{
    case start,stop
}
enum windowsState
{
    case open, close
    
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
    var engine : engineState{
            willSet {
                if newValue == .start {
                    print ("\(brand) двигатель запущен")
                } else {print("\(brand) двигатель заглушен")}
            }
    }
    var windows : windowsState {
            willSet {
                if newValue == .open {
                    print("\(brand) окна открыты")
                } else { print("\(brand) окна закрыты") }
            }
        }
    
    
    init(){
        brand = "Volvo"
        year = 2020
        trunkVolume = 1683
        useTrunkVolume = 200
        engine = .stop
        windows = .close
        
    }
}

var car = SportCar()
car.windows = .close
car.engineStart()
print(car.brand,car.year)


