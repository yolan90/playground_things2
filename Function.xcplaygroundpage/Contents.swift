import Foundation

/* Function
 Chunk of code that can be reused
 1º - Function with no parameter and no return
 2º - Function with parameter and no return
 3º - Function with parameter and return
*/

// 1º
func greetingUser() {
    print("Olá usuário")
}

// Declaring a function it's not going to execute it
// Calling a function
greetingUser()

// 2º
//func sayMessage(text: String) {
func sayMessage(_ text: String, _ when: String) {
    print("Say \(text) when \(when)")
}

//sayMessage(text: "Halo")
sayMessage("Hola", "February")


func sum2Numbers (number1 num1: Int, number2 num2:Int) {
    print("\(num1 + num2)")
}

sum2Numbers(number1: 1, number2: 2)

// 3º
func multiply(number1 num1:Int, number2 num2:Int) -> Int {
    let result = num1 * num2
    return result;
    //return num1 * num2
}
var result = multiply(number1: 2, number2: 4)
print(result)
