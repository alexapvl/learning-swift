import UIKit

// Sean Allen iOS Dev Launchpad
// Structs Challenge

// Let's start with a simple challenge:
// Make a struct called Glass, to represent a glass with water in it.
//  It should have one property:
//      waterLevel, a variable of type double.
//      (We'll use 1.0 to mean a glass that's 100% full,
//      0.5 for 50%, and 0 will be a glass that's empty.)
// It should have one method:
//  isEmpty(), that prints a message:
//      "The glass is empty." when the waterLevel is 0.
//      "There's still some water in the glass." when the waterLevel is greater than 0.

struct Glass {
    var waterLevel: Double
    
    func isEmpty() {
        if waterLevel == 0 {
            print("The glass is empty")
        } else {
            print("There's still some water in the glass")
        }
    }
}


// Make variable called myGlass and set it's value to an instance of the Glass struct. At the time of initialization, set it's waterLevel to 1.
// Change the value of myGlass to represent drinking half the glass.
// Check if the glass is empty.
// Change the value of myGlass to represent drinking the second half of the glass.
// Check if the glass is empty.

var myGlass = Glass(waterLevel: 1.0)


// Read the code below very carefully. I've tried to make it as simple as possible. Basically, I have a struct and a class doing exactly the same thing: defining a point with x and y coordinates.
struct Point {
    var x = 0
    var y = 0
}

class MakingMyPoint {
    var x = 0
    var y = 0
}

var point1 = Point()            // point1 is an instance of Point (a struct)
var point2 = point1             // copy point1 to make point2
point1.x = 5                    // change point1
point1.y = 7


var point3 = MakingMyPoint()    // point3 is an instance of MakingMyPoint (a class)
var point4 = point3             // copy point3 to make point4
point3.x = 5                    // change point3
point3.y = 7

print("Point 2 is \(point2.x), \(point2.y)")
print("Point 4 is \(point4.x), \(point4.y)")

// BEFORE running the code above, can you read the lines to correctly determine what is going to get printed out? What are the values of Point 2 and Point 4?
// Answer: Point2 is a copy so it will have values x=0 and y=0.
// Point4 is a reference of Point3 since MakingMyPoint is a class(not struct) so the values of it will be also changed x=5 and y=7


// What are the main advantages of using Structs instead of classes? Not sure? Don't worry. Just complete the rest of the challenge and check out the solution.
// Answer:
//  1. Perhaps the biggest advantage... Structs are value types, Classes are reference types. (More on this throughout this challenge.)
//  2. Structs can be made immutable -- meaning that after creating an instance of a struct, it's values cannot be changed.
//  3. Structs can have higher performance depending on the situation.
//  4. Structs come with an "automatic" initializer. (The technical name is a "memberwise initializers). You _can_ make your own initializers, but if you don't, a struct will let you initialize a variable and pass values for all the properties. With a class, _you_ have to make the initializer.
//  5. In general, unless you need some of the unique properties of Classes like inheritance or using reference types, it's better to use structs in your projects. They'll keep your code safer, and as your skills grow, you can learn when to use classes. From Apple's reference book "The Swift Programming Language (version 5.4), they state "As a general guideline, prefer structures because they’re easier to reason about, and use classes when they’re appropriate or necessary. In practice, this means most of the custom data types you define will be structures and enumerations.” (Note that sometimes, you have to use classes because that's what Apple uses for core functionality in iOS. Example: UIViewController and UITableView are classes.)



// Read 17_Structs_Solution.playground to see more information and examples about Structs, including a Go Deeper section.
