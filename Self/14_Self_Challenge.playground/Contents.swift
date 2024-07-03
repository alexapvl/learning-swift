import UIKit

// Sean Allen iOS Dev Launchpad
// Self Challenge

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
        
        if isFurry {
            print("\(self.name) is furry.")
        }
    }
    
    func getWeight() {
        if let weight = self.weight {
            print("\(name)'s weight is \(weight) pounds.")
        } else {
            print("\(name)'s weight has not yet been determined.")
        }
    }
    
    func weightGainedPerMonth(weight: Float, numberOfMonths: Int) {
        let weightGain = weight * Float(numberOfMonths)
        
        if let weight = self.weight {
            self.weight = weight + weightGain
        } else {
            print("Can't add weight because \(name) doesn't have a weight.")
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
// Answer: We could remove self in the places where we do not have the part after self the same as the variable itself (self.name = name -> here we cannot remove it for example)


// Why was self needed some places and not needed in other places?
// Answer: self was needed in order to distinguish between things that are named the same
