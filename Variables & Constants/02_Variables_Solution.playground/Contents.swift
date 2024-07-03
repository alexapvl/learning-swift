import UIKit

// Sean Allen iOS Dev Launchpad
// Variables Challenge and Solution


// var defines variables that can be changed.
// Create a variable named highScore. Set it's value to 17
var highScore: Double = 17



// Change the value of highScore to 101.
highScore = 101



// let defines constants which cannot be changed after they are declared.
// Create a constant called myName and give a value.
let myName = "Sean Allen"



// Go deeper

// Can you figure how to print a statement by combining a string and a number?
// Remember that as you launch your career as an iOS developer, it's normal to search the interent and find answers to questions you don't know.
// (And don't worry if you get stuck. You can always check the solution to see how it's done.)



// One method is known as String Interpolation, which lets you add other types of values to a string.
let theAnswerToEverything: Int = 42
print("The answer to life, the universe, and everything is \(theAnswerToEverything).")



// Another approach is called string concatentation.
// Variables of type string can be combined together.
// And strings, wrapped in double quotes, can be combined with variables of type string.
let firstName = "Sean"
let lastName = "Allen"
let clothing = "sweatshirt"

print(firstName + lastName)
print("My name is " + firstName + " " + lastName + ", and if you're watching my videos, I am probably wearing a " + clothing + ".")

