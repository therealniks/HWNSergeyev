import Foundation

enum EngineType{
    case diesel, patrol
}
enum EngineState{
    case start, stop
}
enum WindowsState{
    case opened, closed
}
enum Transmission{
    case classic, sport
}
enum Turbine{
    case isOn, isOff
}
protocol Car
{
    var wheels: Int { get }
    var brand: String { get }
    var transmission: Transmission {get}
    var engineType: EngineType { get }
    var engineState: EngineState { get set }
    var windowsState: WindowsState {get set}
}

extension Car{
    mutating func changingEngineState(engineState:EngineState){
        self.engineState = engineState
    }
    mutating func changingWindowsState(windowsState:WindowsState){
        self.windowsState = windowsState
    }
}
class SportCar:Car, CustomStringConvertible{
    var description: String
    var wheels: Int = 4
    var brand: String
    let transmission: Transmission = .sport
    var engineType: EngineType
    var engineState: EngineState = .stop
    var windowsState: WindowsState = .closed
    var turbine: Turbine = .isOn
    init(brand: String,engineType:EngineType, description: String){
        self.brand = brand
        self.engineType = engineType
        self.description = description
        
    }
}

var polestar = SportCar(brand: "Polestar", engineType: .patrol, description:"Polestar 2nd Gen is new generation of Volvo Sportcars")
polestar.changingEngineState(engineState: .start)
polestar.changingWindowsState(windowsState: .opened)
polestar.turbine = .isOff
print("""
\(polestar.description) Тип двигателя:\(polestar.engineType)
Тип коробки передач: \(polestar.transmission)
""")

