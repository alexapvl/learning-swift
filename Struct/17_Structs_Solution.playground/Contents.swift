import UIKit

// Sean Allen iOS Dev Launchpad
// Structs Challenge and Solution

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
    
    // Notice that we didn't have to make an init(). As explained in the video, structs give us this for free. (It's called the memberwise initializer.)
    
    func isEmpty() {
        if waterLevel == 0 {
            print("The glass is empty.")
        } else {
            print("There's still some liquid in the glass.")
        }
    }
}



// Make variable called myGlass and set it's value to an instance of the Glass struct. At the time of initialization, set it's waterLevel to 1.
// Change the value of myGlass to represent drinking half the glass.
// Check if the glass is empty.
// Change the value of myGlass to represent drinking the second half of the glass.
// Check if the glass is empty.
var myGlass = Glass(waterLevel: 1)
myGlass.waterLevel = 0.5
myGlass.isEmpty()
myGlass.waterLevel = 0
myGlass.isEmpty()



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
// Answer: Point 2 will be 0,0 but Point 4 is 5,7. If you got the answer right, you probably understand why. If you're confused, the reason the points are different is because structs are VALUE types and classes are REFERENCE types. When you set Point2 = Point1, you're making a COPY of the VALUES of point1 into point2 since both are structs. So changing one doesn't change the other. But when you set Point4 = Point3, you're NOT making a copy. Instead, you're making a reference. Point4 "points" to (no pun intended) the same place in memory as Point3. So when you change point 3, you're changing the same memory that Point 4 is using! So you change point 4 too.


// What are the main advantages of using Structs instead of classes? Not sure? Don't worry. Just complete the rest of the challenge and check out the solution.
// Answer: There are several potential advantages, depending on your needs. I've tried to list the main advantages:
//  1. Perhaps the biggest advantage... Structs are value types, Classes are reference types. (More on this throughout this challenge.)
//  2. Structs can be made immutable -- meaning that after creating an instance of a struct, it's values cannot be changed.
//  3. Structs can have higher performance depending on the situation.
//  4. Structs come with an "automatic" initializer. (The technical name is a "memberwise initializers). You _can_ make your own initializers, but if you don't, a struct will let you initialize a variable and pass values for all the properties. With a class, _you_ have to make the initializer.
//  5. In general, unless you need some of the unique properties of Classes like inheritance or using reference types, it's better to use structs in your projects. They'll keep your code safer, and as your skills grow, you can learn when to use classes. From Apple's reference book "The Swift Programming Language (version 5.4), they state "As a general guideline, prefer structures because they’re easier to reason about, and use classes when they’re appropriate or necessary. In practice, this means most of the custom data types you define will be structures and enumerations.” (Note that sometimes, you have to use classes because that's what Apple uses for core functionality in iOS. Example: UIViewController and UITableView are classes.)



// Here's an example of changing a class property. Notice that even when the instance of the class is a let constant, the variable is mutable -- that is, it can be changed.
// This is not possible with structs. Change this class to a struct and the code will fail.
// Thus Structs are guaranteed to be immutable (unchangeable) if you want that functionality.
class City {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let myCity = City.init(name: "San Francisco")
myCity.name
myCity.name = "Austin"
myCity.name




// Go Deeper

// One small difference in classes and structs occurs when you want a method to change a property. In classes, methods are always allowed to change properties (as long as they're defined as variables). But in structs, you need to use the mutating keyword in front of a function that changes the struct.
// Review the struct and the class below, which do the same thing. Look at the method named addRooms() to see the difference in the struct and the class. All that's needed in the struct is the mutating keyword.
// This might sound hard to remember, but in practice, if you forget, Xcode will complain that you're not allowed to change struct properties and Xcode will offer to add the mutating keyword to your method.
struct House {
    var numberOfRooms: Int
    
    // Notice the mutating keyword.
    mutating func addRooms(_ number: Int) {
        numberOfRooms += number
    }
}

var myHouse = House(numberOfRooms: 2)
myHouse.numberOfRooms // returns 2
myHouse.addRooms(1)
myHouse.numberOfRooms // returns 3.


// The same thing with a class doesn't require mutating keyword.
class Home {
    var numberOfRooms: Int
    
    init(numberOfRooms: Int) {
        self.numberOfRooms = numberOfRooms
    }
    
    // mutating keyword not necessary in a class.
    func addRooms(_ number: Int) {
        numberOfRooms += number
    }
}

var myHome = Home(numberOfRooms: 2)
myHome.numberOfRooms // returns 2
myHome.addRooms(1)
myHome.numberOfRooms // returns 3.
