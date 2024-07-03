import UIKit

// Sean Allen iOS Dev Launchpad
// Functions Challenge and Solution

// Functions are extremely important and used repeatedly in programming. This challenge is a little longer to cover different examples of functions and make sure you feel confident using them. If you can write functions, you're on your way to becoming an iOS developer!
// Just follow the instructions, watch the video again if you need help, and if you get stuck somewhere, skip that challenge and then look up the solution when you're ready.



// Write a function named returnOne that:
// takes no parameters
// simply returns the integer 1
func returnOne() -> Int {
    return 1
}



// Write a function named returnOneString that:
// takes no parameters
// simply returns the string "one"
func returnOneString() -> String {
    return "one"
}



// Write a function named printIntroduction that:
// uses "fname" and "lname" (both strings) as the label and the parameter for each argument
// returns no value
// prints out the string: "My friends call me fname but you can call me Mr. lname." (where fname and lname are the values passed into the function)
func printIntroduction(fname: String, lname: String) {
    print("My friends call me \(fname) but you can call me Mr. \(lname).")
}

// Call the function by passing in "Sean" as fname and "Allen" as lname.
printIntroduction(fname: "Sean", lname: "Allen")



// Write a function named sayHello. It should:
// accept a string and return a string
// have an argument label of 'to'
// have a parameter name of 'name'
// return a string that reads "Hello, name" (where name is the string passed into the function)
func sayHello(to name: String) -> String {
    let message = "Hello, \(name)"
    return message
}

// Call the function and say hello to Sean.
sayHello(to: "Sean")



// What's the advantage in having both argument labels and parameter names?
// Answer: It can result in code that's more readable. Swift gives you the flexibility to use no parameter name, use only a parameter name and omit the argument label, or use different names for labels and parameters. It's up to you!



// Write a function to calculate the area of a circle given the radius.
// Hints:   the formula is: Area = pi * radius^2
//          multipy two numbers with the * operator (covered more in a future lesson)
//          example: 2 * 2 will give a result of 4
func getAreaOfCircle(radius: Double) -> Double {
    let pi = 3.14159265359
    return pi * radius * radius
}

// Calculate the area of a dinner plate with a radius of 6 inches.
// Print out a message to tell the user the area.
let area = getAreaOfCircle(radius: 6)
print("The area of a dinner plate with a radius of 6 inches is \(area) inches squared.")



// Review the following code.
var money = 11

func doubleMoney(_ money: Int) -> Int {
    return money + money
}

doubleMoney(money)
print("The value of money is \(money).")

// Why is 11 getting printed instead of 22? Fix the code above so that 22 is printed out.
money = doubleMoney(money)
print("Now we have doubled the value of money to \(money).")

// Money was still 11 because when we pass in money to the function, the function creates a copy of the variable that is only available _inside_ the function. It has a local scope. Whatever the function does to its copy of money, doesn't affect other variables outside the function, even if those variables have the same name!
// So instead of just calling the function, we set the value of money equal to whatever the function returns, which in this case is double the money.




// Go deeper

// Create a function such that you can uncomment the following line of code and get it to run and produce the expeced result.

// By looking at the function and what gets printed out, we can tell our function needs to accept and return an integer.
// Because there is no argument label at the call site, we need to use _ when we define our function. We could have defined the function as increaseByOne(numberToIncrease: Int) but that's not what the example asks for, and it doesn't read as nicely.
func increaseByOne(_ number: Int) -> Int {
    return number + 1
}

print("The next number after 42 is \(increaseByOne(42)).")
// Should print out: "The next number after 42 is 43."




// Create a function to subtract two numbers and return the result. Prove your function works by running it.

// I wanted my function to read subtract(10, and 3). There are plenty of other ways to do it, and as long as the result is 7, you did it right. ;)
func subtract(_ number1: Int, and number2: Int) -> Int {
    return number1 - number2
}

let result = subtract(10, and: 3)



// What if you wanted a function that could accept input but the input wasn't required?

// Swift lets you give parameters a _default value_. You assign a default value with the equal sign after assigning the parameter's type. Here are some examples:

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
