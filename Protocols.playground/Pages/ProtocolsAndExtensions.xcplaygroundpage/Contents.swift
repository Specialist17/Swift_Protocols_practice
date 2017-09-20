//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool {get set}
    var make: String {get set}
    var model: String {get set}
    mutating func start()
    mutating func turnOff()
}

extension Vehicle {
    
    var makeModel: String{
        return "\(make) \(model)"
    }
    
    mutating func start() {
        if isRunning {
            print("Started")
        } else {
            isRunning = true
            print("\(self.description) fired up!")
        }
    }
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("\(self.description) shut down!")
        } else {
            print("Dead")
        }
    }
}

struct SportsCar: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    var description: String{
        return self.makeModel
    }
}

//Classes don't need the mutating keyword because they're a reference type, the properties are already mutable
class SemiTruck: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    var description: String {
        return self.makeModel
    }
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    
    func blowAirHorn() {
        print("Hooooonk!")
    }
}


var miNegro = SportsCar(isRunning: true, make: "Audi", model: "R8")
var truck = SemiTruck(isRunning: false, make: "Peterbuilt", model: "Verago")
miNegro.start()
miNegro.turnOff()

truck.start()

var vehicleArray: Array<Vehicle> = [miNegro, truck]

for vehicle in vehicleArray {
    print("\(vehicle.description)")
}


extension Double {
    var dollarString: String {
        return String(format: "$%.02f", self)
    }
}

var pct = 32.15 * 0.17
pct.dollarString
