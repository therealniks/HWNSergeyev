import UIKit

enum CarsErrors: Error {
    case engineIsBroken
    case oilIsLeaking
}

class Cars{
    var engine:Bool
    var oil: Float
    init(engine: Bool, oil: Float){
        self.engine = engine
        self.oil = oil
    }
    func engineState() throws{
        if engine == false {
            throw CarsErrors.engineIsBroken
        }
    }
    
    func oilState() throws {
        if oil < 4.0 {
            throw CarsErrors.oilIsLeaking
        }
    }
}

var car = Cars(engine: false, oil: 4.3)
do{
    try car.engineState()
} catch CarsErrors.engineIsBroken{
    print("Поломка двигателя")
}

do{
    try car.oilState()
}catch CarsErrors.oilIsLeaking{
    print("Низкий уровень масла")
}
