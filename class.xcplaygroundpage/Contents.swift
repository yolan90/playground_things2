import Foundation

// class - data model with inheritance
class Dog {
    var name: String
    var isNice: Bool

    //class requires a explicit initializer
    init(name: String, isNice: Bool = true) {
        self.name = name
        self.isNice = isNice
    }
}

//when the value of constant can be changed --> class (struct will complaint for the below code)
var toto: Dog = Dog(name: "Toto")
// Accessing the variable / property
toto.isNice = false
var xuxa: Dog = toto
print(toto.name)
xuxa.name = "Rex"
print(xuxa.name)
print(toto.name)

/* Class is a reference type, that means it "points" to an instance
 struct is value type, that means it "copies" the memory content
 */
