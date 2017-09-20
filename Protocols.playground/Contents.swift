//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool {get set}
    
    mutating func start()
    mutating func turnOff()
}

struct SportsCar: Vehicle {
    var isRunning: Bool = false
    var description: String{
        if isRunning {
            return "Sports car already running"
        } else {
            return "Sports car turned off"
        }
    }
    mutating func start() {
        if isRunning {
            print("Already started!")
        } else {
            isRunning = true
            print("Vroom")
        }
    }
    
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("Crick")
        } else {
            print("Already dead!")
        }
    }
}

//Classes don't need the mutating keyword because they're a reference type, the properties are already mutable
class SemiTruck: Vehicle {
    var isRunning: Bool = false
    var description: String {
        if isRunning {
            return "Semitruck already running"
        } else {
            return "Sports car turned off"
        }
    }
    
    func start() {
        if isRunning {
            print("Already started!")
        } else {
            isRunning = true
            print("Rumble")
        }
    }
    
    func turnOff() {
        if isRunning {
            isRunning = false
            print("Dead silence")
        } else {
            print("Already dead!")
        }
    }
    
    func blowAirHorn() {
        print("Hooooonk!")
    }
}


var miNegro = SportsCar(isRunning: true)
var truck = SemiTruck()
miNegro.start()
miNegro.turnOff()

truck.start()

var vehicleArray: Array<Vehicle> = [miNegro, truck]

for vehicle in vehicleArray {
    print("\(vehicle.description)")
}


