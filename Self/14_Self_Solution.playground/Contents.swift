import UIKit

// Sean Allen iOS Dev Launchpad
// Self Challenge and Solution

// Below is code that works. Go ahead and run the code to see the results.

// I didn't say it was pretty code though. In fact, it's ugly on purpose.
// You might need to watch the video on classes and come back to do this challenge, but really, all you need to focus on is the keyword 'self'.

// Your task is to remove the keyword self everywhere in the code that it's not needed. You must do so without Xcode throwing an error at you. If you remove 'self' and cause Xcode to throw an error, your computer will spontaneously combust and your house will burn to the ground. *
// * These statements have not be evaluated and may in fact be wildly inaccurate.

// When you're done, answer the questions below the code.

class Cat {
    var isFurry = true
    var name: String
    var weight: Float?
    
    // The init() is the initializer. It is what you call when you make an instance of this class, as seen in the example code below.
    init(name: String) {
        self.name = name
        
        if self.isFurry {
            print("\(self.name) is furry.")
        }
    }
    
    func getWeight() {
        if let weight = self.weight {
            print("\(self.name)'s weight is \(weight) pounds.")
        } else {
            print("\(self.name)'s weight has not yet been determined.")
        }
    }
    
    func weightGainedPerMonth(weight: Float, numberOfMonths: Int) {
        let weightGain = weight * Float(numberOfMonths)
        
        if let weight = self.weight {
            self.weight = weight + weightGain
        } else {
            print("Can't add weight because \(self.name) doesn't have a weight.")
        }
    }
}

let garfield = Cat.init(name: "Garfield")
garfield.getWeight()
garfield.weight = 9
garfield.getWeight()
garfield.weightGainedPerMonth(weight: 1, numberOfMonths: 12)
garfield.getWeight()

// Where could you remove self? Where could you not remove self?
// Answer: self.name is needed on the first line of the init(). self.weight is needed in the weightGainedPerMonth() method. 'self' can be deleted everywhere else!



// Why was self needed some places and not needed in other places?
// Answer: You use self when you need to DISTINGUISH between things that are named the same. In other places, self is implicit. Swift KNOWS what you're talking about without having to use self. Look in the init(). We print off a message if isFurry is true. Because there is no conflict in names, Swifit knows that isFurry is a property of the class. Using self.isFurry is just redundant and unnecessary.

// Take the init() for example. You're passing in a parameter called name. But the class already has a property of name. So Swift doesn't know which 'name' you're wanting to use until you say 'self.name'. Now, Swift knows that self.name means the name property. And the other 'name' must then be the parameter passed into the init().

// Same with weightGainedPerMonth(). Because I made the poor decision to have a parameter called 'weight', it was unclear which 'weight' we were talking about. The class property? Or the weight passed into the function as a parameter? If, for exmaple, I rename the paramter in the function 'amount' instead of 'weight, then I would no longer need to use self.weight. Swift would now understand that weight means the class property, no self needed!
