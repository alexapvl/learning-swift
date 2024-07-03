import UIKit

// Sean Allen iOS Dev Launchpad
// Enumerations Challenge

// Create an enumeration for all 12 months of the year. Give January a rawValue of 1.
enum months: Int {
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
print(months.December.rawValue)
// The rawValues for the other 11 months will be relative to the rawValue of case January, the last case in which the rawValue was specified



// What would the rawValues be if we had not set January to 1?
// They would be as if they were counted starting from 0



// What happens if we forget to declare the enum as being of type Int?
// We cannot set a rawValue to the cases



// Create a constant named currentMonth and set its value to the current month.
let currentMonth = months.January



// Print a message with the number that represents the current month
print(currentMonth.rawValue)



// Print a message with how many months are left in the year after the current month
print(11 - currentMonth.rawValue)



// Go deeper

// Want a harder challenge? If you get stuck, it's totally fine to skip ahead to the solution and move on to the next video!

// You may have noticed that your instructor has a beard. But have you noticed that it's changed over time? Your challenge today is to create an enumeration to model the types of beards your instructor has.

// Instructions
// 1. Review the videos below to see the different lengths of Sean's beards.

        // Swift Classes and Structures Explained
        // https://www.youtube.com/watch?v=ObIxxHy8yY8
        // 0

        // Swift Tutorial - Haptic Feedback - Taptic Engine
        // https://www.youtube.com/watch?v=kUBpgFmVdNU
        // 25

        // LIVE: Subscriber Code Review and Q&A
        // https://www.youtube.com/watch?v=3gPcaUfCUgE
        // 50

        // 90-90 Rule
        // https://www.youtube.com/watch?v=T1v_E0yuVBw
        // 100

// 2. Create an enumeration called Beards. Use at least four cases to describe the different levels of beards. Make up whatever names you'd like.

enum Beards: Int {
    case freshCut = 0
    case shortCut = 25
    case mediumCut = 50
    case longCut = 100
}
// 3. Create a function named compareBeards that takes two parameters (both of type Beards) and prints out which beard is better or if the two beards are equal. (Want a hint? You'll need to use the rawValue of your Enum...)

func compareBeards(beard1: Beards, with beard2: Beards) {
    // a beard is better if it is smaller in size
    if beard1.rawValue < beard2.rawValue {
        print("The first beard is better")
    } else if beard1.rawValue > beard2.rawValue {
        print("The second beard is better")
    } else {
        print("The beards are the same")
    }
}

// 4. Review the two videos below. Make two variables of type Beard (one for each video) and assign a value that most closely matches the types of beards you defined in your enumeration.

    // Beard in Video 1
    // https://www.youtube.com/watch?v=rnJxpuPyLNA
var beardVideo1  = Beards.freshCut

    // Beard in Video 2
    // https://www.youtube.com/watch?v=6U_wgT5ekrc
var beardVideo2 = Beards.longCut

// 5. Run your function and make sure that it works.
compareBeards(beard1: beardVideo1, with: beardVideo2)



