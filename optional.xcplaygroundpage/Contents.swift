import Foundation

/*
 Optionals
 Data type what could have 2 different "values"
 Either the value itself or the absence of value (nil)
 */

// Optional is a data type so we just add ? to the type
var name: String?

print(name)

name = "Yol"

print(name)

// 1º Force unwrap
// If we unwrap a nil optional the app will crash
print(name!)

// 2º Optional binding
// this code will work if the "name" variable is not nill
if let name1 = name {
    print(name1)
}

// Function that could return an invalid value use optional
Int("97")
Int("Bagus")

