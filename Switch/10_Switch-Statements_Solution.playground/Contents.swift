import UIKit

// Sean Allen iOS Dev Launchpad
// Switch Statements Challenge and Solution

// Write an enum called Pets and add as many kinds of animals as you can think of that people might have as a pet. Ex: cats, dogs, etc.
enum Pets {
    case cats
    case tigers
    case dogs
    case hamster
    case goldfish
    case turtles
    case spiders
    case plants
}

// Write a function named getPetOpinion that:
// takes a single parameter of type Pets
// prints out a statement explaining how you would feel about having each these as a pet.

// Notice that this switch statement doesn't have a default case. If you cover all possible cases in your enum, you don't have to have a default case.
func getPetOpinion(about pet: Pets) {
    switch pet {
    case .cats:
        print("Cats are little tigers that want to murder you.")
    case .tigers:
        print("Tigers are big cats that will actually murder you.")
    case .dogs:
        print("Dogs are man's best friend. Man's stinky best friend.")
    case .hamster:
        print("I prefer pets that live longer than a month.")
    case .goldfish:
        print("Goldfish are basically river hamsters.")
    case .turtles:
        print("If you love having a pet rock that you have to work to keep alive, you'll love turtles.")
    case .spiders:
        print("Spiders are awesome, especially jumping spiders, though it might be best to have a catch and release policy to keep the family happy.")
    case .plants:
        print("Plants are essential for life on earth and pointless as pets.")
    }
}

// Test your function by getting an opinion for one of the pets in your enum.
getPetOpinion(about: .spiders)



// Here is the guessing game function from the If Statement challenge. Rewrite the function using a switch statement instead of the if-statement.
func coldWarmOrHot(guess: Int) -> String {
    
    // This returns a random number between 1 and 100, using a range. (This is covered in a future lesson.)
    let randomNumber = Int.random(in: 1...100)
    
    // This holds the message that we ultimately return.
    var message = ""
    
    // To figure out which message to return, we need to figure out how close the guess was to the random number.
    // The abs() function returns the absolute value, meaning the number but no negative sign. So abs(-37) and abs(37) both result in 37. By using abs(), it doesn't matter if the guess is more or less than the random number. If we didn't use abs(), then guessing 50 when the random number was 40 would give a difference of -10, which doesn't make sense. You're guess isn't -10 off from the actual number. It's 10 off.
    let difference = abs(randomNumber - guess)
    
    // Set the value of message appropriately
    // We can't use <= in the switch statement, but we can use ranges like 1...10, meaning equal to or between 1 and 10.
    switch difference {
    case 0:
        message = "That's insane, Wayne! You've guessed the number exactly and burned yourself! 🔥"
    case 1...10:
        message = "Great hypothesis, Papadopoulos! You're hot!!! 🥵"
    case 11...25:
        message = "Oh my, Bill Nye! You're warmer! ☺️"
    default:
        message = "No way Jose. You're cold. 🥶"
    }
    
    return message + " You guessed \(guess) and the random number was \(randomNumber)."
}

// Print the function and pass in your guess
print(coldWarmOrHot(guess: 86))




// Go Deeper


// Did you know you can handle two or more cases at once? Just separate the case values with a comma. I'll let you try it first. Otherwise, check out the solution for an example.

// Create a variable name pet and set it's value to one of your pets from your enum.
let pet = Pets.goldfish

// Write a switch statement that prints out the same message for all pets that you think would be good for children.
// Write a default message for all the other pets that probably wouldn't be good for children.
switch pet {
case .goldfish, .hamster:
    print("Both goldfish and hamsterrs are popular first pets for children.")
default:
    print("This is probably not a good pet for children.")
}



// The following information isn't a challenge for you to complete. Maybe just a challenge to understand. Read on to see an example of computed properties and how they work with switch statements. This tool will be super helpful during a future challenge.

// You're used to variables that have a set value.
var myNumber = 5

// But sooner or later, you're going to wish that a variable could get different values based on some condition. Sure, you could use if statements or switch statements to set a variable's value. But there's another trick that Swift offers you, and it's called computed properities. Let's look at a simple example:

// Imagine an enumeration for different sizes of pants.
enum PantsSize {
    case small
    case medium
    case large
    case extralarge
}

// Let's set a variable to our pants size. (Feel free to change for yourself.)
let mySize = PantsSize.small

// Now, say we wanted to also have a variable to hold the value of the waist size in inches.
// We could do it like this:
var waistSizeExample = 0
switch mySize {
case .small:
    waistSizeExample = 32
case .medium:
    waistSizeExample = 34
case .large:
    waistSizeExample = 36
case .extralarge:
    waistSizeExample = 38
}
print("The waist size example is \(waistSizeExample) inches.")

// But notice that the code above is kind of awkward. We have to first size the variable to 0 (which doesn't make any sense -- you can't have a waist that's 0 inches!). And then we type waistSizeExample over and over as we set the variable.
// Another approach is to use a computed property with a switch statment to set the value of waistSizeInches based upon the pants size.
// Notice that we have to give the variable a type and that there is no equal sign...
var waistSizeInches: Int {
    switch mySize {
    case .small:
        return 32
    case .medium:
        return 34
    case .large:
        return 36
    case .extralarge:
        return 38
    }
}
print("My waist size is \(waistSizeInches) inches.")
 
// Just remember that computed properties exist. We'll revisit this topic in a future challenge.
