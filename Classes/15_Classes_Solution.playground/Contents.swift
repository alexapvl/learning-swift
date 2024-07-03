import UIKit

// Sean Allen iOS Dev Launchpad
// Classes Challenge and Solution

/*
 
 Make a Class called Car. (Remember by convention, object names are Capitalized.)

 Give the class the following properties. You can decide which should be variables and which should be constants (and you can always change them later if needed.)
    - make: String
    - model: String
    - color: String
    - maxSpeed: Double
    - value: Int

 Give the class the following methods (functions)
    - init() that initializes an instance of the Car class, setting it's values.
    - getMilesTraveled(time: Double, speed: Double) -> Double
        - This method should take the time (in minutes) and the speed (in miles per hour) and return the distance traveled. (You can also changed this to kilometers if preferred.)
    - adjustValue(percentage: Double) -> Int
        - This method should take a percentage (postive or negative) and change the value of the car by that amount. It should return the new value of the car. Note that I will write the code assuming that 25 is used as a percentage and not 0.25.
 */

class Car {
    let make: String
    let model: String
    let modelYear: Int
    var color: String
    var maxSpeed: Double
    var value: Int
    
    init(make: String, model: String, modelYear: Int, color: String, maxSpeed: Double, value: Int) {
        self.make = make
        self.model = model
        self.modelYear = modelYear
        self.color = color
        self.maxSpeed = maxSpeed
        self.value = value
    }
    
    func getMilesTraveled(time: Double, speed: Double) -> Double {
        // dividing by 60 converts to miles traveled in an hour...
        // The math isn't as important here as learning to use Classes.
        return (time * speed) / 60
    }
    
    func adjustValue(percentage: Double) -> Int {
        let change = Double(value) * (percentage / 100)
        value += Int(change) // We had to convert change back to an Int since it's a Double
        return value
    }
}



// Create a variable to hold the car you drive or the car you wish you drove.
// Set that variable to an instance of your class Car.
let myCar = Car.init(make: "Mercedes",
                     model: "300 SL",
                     modelYear: 1956,
                     color: "silver",
                     maxSpeed: 163,
                     value: 1_825_000) // Fun tip: You can write numbers in Swift with underscores. This can make longer numbers more readable by using an underscore in place of a comma.


// Calcualte how far your car will travel in 87 minutes at 90 mph.
myCar.getMilesTraveled(time: 87, speed: 90) // 130.5 miles.



// You got a paint job. Change the color of your car to zebra-striped. 🦓
myCar.color = "zebra-striped"



// Because of the Zebra-striped paint job (it seemed like a good idea at the time), your car lost 37% of it's value. Update it's value. Bonus points if you can print out a message with how much the value dropped in dollars. (Hint, just use local variables. You don't need to modify the class.)
let previousValue = myCar.value
myCar.adjustValue(percentage: -37)
print("My \(myCar.make) \(myCar.model) lost $\(previousValue - myCar.value) in value. Ouch.")




// Go Deeper

// The following code is for your review. There's nothing for you to solve.

// Here's a trick you can use if you find yourself with a class that has lots of properties and you find yourself sometimes needing to initialize the class with the same default values over and over. You can use what's called convenience initializers. Read the code for more comments.

// Our story class stores a story
class Story {
    var title: String
    var author: String
    var date: Date
    var storyTxt: String
    var language: String
    var category: String
    var favs: Int
    var commentCount: Int
    
    // Here's the designated initializer -- the offical term for the "normal" way of initializing a class.
    init(title: String, author: String, date: Date, storyTxt: String, language: String, category: String, favs: Int, commentCount: Int) {
        self.title = title
        self.author = author
        self.date = date
        self.storyTxt = storyTxt
        self.language = language
        self.category = category
        self.favs = favs
        self.commentCount = commentCount
    }
    
    // Here's the convenience initializer. What it's doing is calling the designated init above. But, it's letting you pass in one value -- the title -- and it's providing the same default values for all the other properties.
    convenience init(title: String) {
        self.init(
            title: title,
            author: "Unknown",
            date: Date(),
            storyTxt: "Coming soon...",
            language: "English",
            category: "General",
            favs: 0,
            commentCount: 0)
    }
    
    // You can even have multiple convenience initializers, with different patterns of parameters and different default values.
    convenience init(title: String, author: String) {
        self.init(
            title: title,
            author: author,
            date: Date(),
            storyTxt: "New tech coming soon...",
            language: "English",
            category: "Technology",
            favs: 0,
            commentCount: 0)
    }
}

// Using the convenience initializers. All the other properties get assigned with default values, as found in the convenience initializer.
var myStory1 = Story.init(title: "Here's a story about convenience initializers")
var myStory2 = Story.init(title: "Here's a second story to show you how nice my job is.")
var myStory3 = Story.init(title: "Here's another. Short and Sweet.", author: "Steve Jobs")

// Using the designated (aka "normal") initializer. You've got to provide ALL the values, every time.
var yourStory1 = Story.init(title: "Here's a story about the old fashioned initializers", author: "Unknown", date: Date(), storyTxt: "Coming soon...", language: "English", category: "General", favs: 0, commentCount: 0)

var yourStory2 = Story.init(title: "Here's your second story with all its default values. Again.", author: "Unknown", date: Date(), storyTxt: "Coming soon...", language: "English", category: "General", favs: 0, commentCount: 0)

var yourStory3 = Story.init(title: "This could get old without convenience initializers.", author: "Tim Cook", date: Date(), storyTxt: "New tech coming soon...", language: "English", category: "Technology", favs: 0, commentCount: 0)


// Keep the idea in mind, and you'll find it useful one day.
