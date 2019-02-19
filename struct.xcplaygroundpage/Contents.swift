import Foundation

/* Data model - Defining struct or class to organize our code
 
 Reusability since we create the model once and generate N instances
 */

// Creating the model

struct Person {
    var name: String
    var age: Int
}

// Creating instances
var eu: Person = Person(name:"Yola",age:28)
var tu: Person = Person(name:"Danilo",age:-80)

// Accessing variables inside the instance
eu.name
eu.age

struct Hero {
    var speed: Int
    
    func run() {
        print("Hero is running")
        print("Speed: \(speed)")
    }
    
    // When a function changes the value of a struct we use mutating
    mutating func doubleSpeed() {
        speed *= 2
    }
}

var sonic = Hero(speed:2)
sonic.run()
sonic.doubleSpeed()
sonic.run()

enum Color {
    case red, green, blue
}

struct Car {
    var brand: String
    var color: Color
    var numberOfDoors: Int
    
    // Custom initializer
    init(brand: String, color: Color, numberOfDoors: Int = 4) {
        // Assign the parameter values to the model variables
        // self points to the "context" = instance
        self.brand = brand
        self.color = color
        self.numberOfDoors = numberOfDoors
    }
}

var mustang: Car = Car(brand: "Ford", color: Color.blue)
var camara: Car = Car(brand:"GM", color: .red, numberOfDoors:2)
