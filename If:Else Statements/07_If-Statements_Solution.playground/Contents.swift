import UIKit

// Sean Allen iOS Dev Launchpad
// If Statements Challenge and Solution

// Create an if statement that prints out a different message based on the value of the following variable.
// Print "Correct! The answer to life, the universe, and everythig is 42!" -- when the variable is 42.
// Print "Naw man. That ain't the right answer. Try again." -- when the variable is not 42.
let theAnswerToEverything = 42

if theAnswerToEverything == 42 {
    print("Correct! The answer to life, the universe, and everythig is 42!")
} else {
    print("Naw man. That ain't the right answer. Try again.")
}



// Question: Why do we use 1 equal sign when creating the constant theAnswerToEverything but 2 equal signs in the If statement?
// Answer: Use 1 equal when setting the value of the variable. Use 2 equal signs when evaluating a statement, meaning we are checking if it's equal to a value.



// Create a variable named isCat as type boolean.
// Write an if statement that prints "meow" for a cat or "woof" for everything else.
var isCat = true

// It's not necessary, but we could also type: if isCat == true
if isCat {
    print("Meow")
} else {
    print("Woof")
}



// Let's play a guessing game where you try to guess a random number.
// I've started the code. Finish it by modifying the function below to return different messages depending on how close the user gets to guessing a random number.
// Here are the messages you should return if the user:
// guesses exactly      -- return "That's insane, Wayne! You've guessed the number exactly and burned yourself! 🔥"
// guesses within 10    -- return "Great hypothesis, Papadopoulos! You're hot!!! 🥵"
// guesses within 25    -- return "Oh my, Bill Nye! You're warmer! ☺️"
// is more than 25 off  -- return "No way Jose. You're cold. 🥶"
// (You can copy and paste the messages to get the right emojis.)
// As part of the message, also include the guess and the random number.
func coldWarmOrHot(guess: Int) -> String {
    
    // This returns a random number between 1 and 100, using a range. (This is covered in a future lesson.)
    let randomNumber = Int.random(in: 1...100)
    
    // This holds the message that we ultimately return.
    var message = ""
    
    // To figure out which message to return, we need to figure out how close the guess was to the random number.
    // The abs() function returns the absolute value, meaning the number but no negative sign. So abs(-37) and abs(37) both result in 37. By using abs(), it doesn't matter if the guess is more or less than the random number. If we didn't use abs(), then guessing 50 when the random number was 40 would give a difference of -10, which doesn't make sense. You're guess isn't -10 off from the actual number. It's 10 off.
    let difference = abs(randomNumber - guess)
    
    // Here's where you make the magic happen...
    // Set the value of message appropriately
    if difference == 0 {
        message = "That's insane, Wayne! You've guessed the number exactly and burned yourself! 🔥"
    } else if difference <= 10 {
        message = "Great hypothesis, Papadopoulos! You're hot!!! 🥵"
    } else if difference <= 25 {
        message = "Oh my, Bill Nye! You're warmer! ☺️"
    } else {
        message = "No way Jose. You're cold. 🥶"
    }
    
    return message + " You guessed \(guess) and the random number was \(randomNumber)."
}

// Print the function and pass in your guess
print(coldWarmOrHot(guess: 17))



// Go Deeper

// Want a harder challenge?
// Let's blow your mind a little bit. Did you know functions can call themselves? It's called recursion.

// The code below is a bad. The function takes a number and returns a number that's one more than before. Unfortunately, if we called this function, it will run forever and make Xcode become unresponsive. Xcode even warns us about this with the message "All paths through this function will call itself." Therefore, I am not calling the function!

func addOne(number: Int) -> Int {
    return addOne(number: number + 1)
}


// Let's write a better function, one that stops when the count gets to 100. To do this, you're going to have to use an if statement to figure out when to stop.
// Can you write a function called countToOneHundred that takes an integer, returns an integer, and calls itself until it reaches 100?
// I'll help you out by starting the function for you. You just need to edit the function to count up to 100.
// If you get stuck, no worries! Check out the solution. This challenge was meant to be a little harder.
func countToOneHundred(count: Int) -> Int {
    let newCount = count + 1
    // If we haven't reached 100 yet, call the function again, starting from 1 higher than we were the last time.
    if newCount < 100 {
        return countToOneHundred(count: newCount)
    } else {
        // Returns 100
        return newCount
    }
}

// Let's call the function, starting the count at 1.
let oneHundred = countToOneHundred(count: 1)
print(oneHundred) // should print 100
