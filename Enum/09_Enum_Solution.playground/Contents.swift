import UIKit

// Sean Allen iOS Dev Launchpad
// Enumerations Challenge and Solution

// Create an enumeration for all 12 months of the year. Give January a rawValue of 1.

enum Month: Int {
    case January = 1
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

// What are the rawValues for the other 11 months?
// Answer: they count up by 1, so February is 2, March is 3, and so on.



// What would the rawValues be if we had not set January to 1?
// Answer: January = 0, and they still count up by 1. So February is 1, March 2, and so on.



// What happens if we forget to declare the enum as being of type Int?
// Answer: we cannot access the rawValue. rawValue only exists because we've given the enum a type.



// Create a constant named currentMonth and set its value to the current month.
let currentMonth = Month.September



// Print a message with the number that represents the current month
print("The number of the current month is \(currentMonth.rawValue).")



// Print a message with how many months are left in the year after the current month
let monthsLeftInYear = 12 - currentMonth.rawValue
print("There are \(monthsLeftInYear) months left in the year.")




// Go deeper

// Want a harder challenge? If you get stuck, it's totally fine to skip ahead to the solution and move on to the next video!

// You may have noticed that your instructor has a beard. But have you noticed that it's changed over time? Your challenge today is to create an enumeration to model the types of beards your instructor has.

// Instructions
// 1. Review the videos below to see the different lengths of Sean's beards.

        // Swift Classes and Structures Explained
        // https://www.youtube.com/watch?v=ObIxxHy8yY8

        // Swift Tutorial - Haptic Feedback - Taptic Engine
        // https://www.youtube.com/watch?v=kUBpgFmVdNU

        // LIVE: Subscriber Code Review and Q&A
        // https://www.youtube.com/watch?v=3gPcaUfCUgE

        // 90-90 Rule
        // https://www.youtube.com/watch?v=T1v_E0yuVBw

// 2. Create an enumeration called Beards. Use at least four cases to describe the different levels of beards. Make up whatever names you'd like.
// 3. Create a function named compareBeards that takes two parameters (both of type Beards) and prints out which beard is better or if the two beards are equal. (Want a hint? You'll need to use the rawValue of your Enum...)
// 4. Review the two videos below. Make two variables of type Beard (one for each video) and assign a value that most closely matches the types of beards you defined in your enumeration.

    // Beard in Video 1
    // https://www.youtube.com/watch?v=rnJxpuPyLNA

    // Beard in Video 2
    // https://www.youtube.com/watch?v=6U_wgT5ekrc

// 5. Run your function and make sure that it works.




// By setting the enumeration to type Int, each case gets a numeric value. Since we don't set the value, Swift assigns the first case a value of 0, the second a value of 1, the third a value of 2, and so on.
enum Beards: Int {
    case beardlessWonder
    case babyBeard
    case burlyBeard
    case birdsAreNesting

    // Did you know that you can have a function associated with an enumeration?
    // The static keyword lets us call the function directly, as explained further below...
    // You could also just delete the 'static' keyword, move this function outside of the enum, and call the function like you've done before.
    static func compareBeards(_ beard1: Beards, _ beard2: Beards) {
        // By comparing the rawValues of different beards, making a comparison is simple.
        if beard1.rawValue > beard2.rawValue {
            print("Beard 1 is better than beard 2.")
        } else if beard2.rawValue > beard1.rawValue {
            print("Beard 2 is better than beard 1.")
        } else {
            print("The beards are equal.")
        }
    }
}

// These constants hold the values of the beards in the second set of videos (linked to in item 4 of the instructions.)
let beardInVideo1 = Beards.beardlessWonder
let beardInVideo2 = Beards.birdsAreNesting

// Compare the beards
// Because we defined this function with the static keyword, we can call the function directly, without first declaring a new variable of type Beards.
Beards.compareBeards(beardInVideo1, beardInVideo2)
