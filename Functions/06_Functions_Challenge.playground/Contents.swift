import UIKit

// Sean Allen iOS Dev Launchpad
// Functions Challenge

// Functions are extremely important and used repeatedly in programming. This challenge is a little longer to cover different examples of functions and make sure you feel confident using them. If you can write functions, you're on your way to becoming an iOS developer!
// Just follow the instructions, watch the video again if you need help, and if you get stuck somewhere, skip that challenge and then look up the solution when you're ready.



// Write a function named returnOne that:
// takes no parameters
// simply returns the integer 1
func returnOne() -> Int{
    return 1
}



// Write a function named returnOneString that:
// takes no parameters
// simply returns the string "one"
func returnOneString() -> String{
    return "one"
}



// Write a function named printIntroduction that:
// uses "fname" and "lname" (both strings) as the label and the parameter for each argument
// returns no value
// prints out the string: "My friends call me fname but you can call me Mr. lname." (where fname and lname are the values passed into the function)

func printIntroduction(fname: String, lname: String){
    print("My friends call me \(fname) but you can call me Mr. \(lname).")
}

// Call the function by passing in "Sean" as fname and "Allen" as lname.
printIntroduction(fname: "Sean", lname: "Allen")



// Write a function named sayHello. It should:
// accept a string and return a string
// have an argument label of 'to'
// have a parameter name of 'name'
// return a string that reads "Hello, name" (where name is the string passed into the function)

func sayHello(to name: String) -> String{
    return "Hello, " + name
}

// Call the function and say hello to Sean.
sayHello(to: "Sean")



// What's the advantage in having both argument labels and parameter names?
// Answer: The function call site is easier to read



// Write a function to calculate the area of a circle given the radius.
// Hints:   the formula is: Area = pi * radius^2
//          multipy two numbers with the * operator (covered more in a future lesson)
//          example: 2 * 2 will give a result of 4

func calculateCircleArea(radius: Double) -> Double{
    let pi: Double = 3.1415
    return pi * pow(radius, 2)
}

// Calculate the area of a dinner plate with a radius of 6 inches.
// Print out a message to tell the user the area.
var dinnerPlateArea = calculateCircleArea(radius: 6)
print("The area of the dinner plate is equal to \(dinnerPlateArea) square inches.")



// Review the following code.
var money = 11

func doubleMoney(_ money: Int) -> Int {
    return money + money
}

//doubleMoney(money)
//print("The value of money is \(money).")
// Here is the fix. It could be done in many different ways and this is one of them
print("The value of money is \(doubleMoney(money)).")

// Why is 11 getting printed instead of 22? Fix the code above so that 22 is printed out.
// Answer: 11 is getting printed because the value of the 'money' variable is not changed at the function call site, there is a value which is returned but never used or assigned to a variable.



// Go deeper

// Create a function such that you can uncomment the following line of code and get it to run and produce the expeced result.
func increaseByOne(_ number: Int) -> Int{
    return number + 1
}

 print("The next number after 42 is \(increaseByOne(42)).")
// Should print out: "The next number after 42 is 43."




// Create a function to subtract two numbers and return the result. Prove your function works by running it.
func subtract(firstNumber: Double, and secondNumber: Double) -> Double{
    return firstNumber - secondNumber
}
var result = subtract(firstNumber: 50, and: 100)

// What if you wanted a function that could accept input but the input wasn't required?
// Swift makes it easy. See the solution for examples.

// Here, we give a default value of "John Doe" to the name parameter.
// This function will use the value we pass in for name OR it will use "John Doe" if no value is passed in.
func sayHelloToSomeone(name: String = "John Doe") {
    print("Hello \(name)")
}

sayHelloToSomeone()             // prints Hello John Doe
sayHelloToSomeone(name: "Sean") // prints Hello Sean



// You can also mix which arugments have a default value and which do not.
// The following function takes a number, adds 5 to it and then multiplies the result by another number called the factor. If you do not pass in the factor, it will use the default value of 2.
func addFiveThenMultiply(number: Int, factor: Int = 2) -> Int {
    var result = number + 5
    result = result * factor
    return result
}

addFiveThenMultiply(number: 5)              // returns 20
addFiveThenMultiply(number: 5, factor: 10)  // returns 100
