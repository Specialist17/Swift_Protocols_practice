//: [Previous](@previous)

import UIKit

var str = "Hello, playground"

func intAdder(_ number: Int) -> Int {
    return number + 1
}

intAdder(15)

func doubleAdder(_ number: Double) -> Double {
    return number + 1
}
doubleAdder(15.0)

//: [Next](@next)


func genericAdder<T: Numeric>(number: T) -> T{
    return number + 1
}

genericAdder(number: 16)
