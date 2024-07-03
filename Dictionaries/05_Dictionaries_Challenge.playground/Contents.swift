import UIKit

// Sean Allen iOS Dev Launchpad
// Dictionaries Challenge

// Swift provides three main data types for storing collections of items:
// 1) Arrays are ordered collections of items.
// 2) Sets are unordered collections of unique items.
// 3) Dictionaries are _unordered_ collections of _key-value pairs_.

// Create a dictionary named famousNumbers with the following key/value pairs
//      pi          = 3.1415926535
//      luckiest    = 7
//      unluckiest  = 13
//      e           = 2.71828
//      everything  = 42
//      year        = 365
//      circle      = 360
//      zero        = 0
var famousNumbers: [String: Double] = [
    "pi": 3.1415926535,
    "luckiest": 7,
    "unluckiest": 13,
    "e": 2.71828,
    "everything": 42,
    "year": 365,
    "circle": 360,
    "zero": 0
]

// Lookup the luckiest number in the dictionary.
famousNumbers["luckiest"]



// So a year isn't really exactly 365 days long. It's closer to 365.24 days (and even then, it's complicated). Update the value of year in the dictionary with this more accurate value.
famousNumbers["year"] = 365.24



// Emergency numbers are pretty famous. Add 911 (or whatever your country's emergency number is) to the dictionary.
famousNumbers["emergency"] = 112



// How many famous numbers are in the dictionary?
famousNumbers.count



// Go deeper


// No one likes bad luck. Remove the unlucky number from the famous numbers dictionary.
// Hint: remmber to type variableName. -- that's variableName(dot) -- to see what Xcode recommends...
famousNumbers.removeValue(forKey: "unluckiest")



// Dictionaries don't just have to be basic data types.
// Let's make a dictionary that uses strings for the keys and arrays for the values.
var vehicles: [String: [String]] = [:]
// Create a variable named cars that holds an array with the following values:
//  Porsche 911, Ford Mustang, Lamborghini Aventador, Tesla Model S, VW Beetle, Mini Cooper
var cars: [String] = ["Porsche 911", "Ford Mustang", "Lamborghini Aventador", "Tesla Model S", "VW Beetle", "Mini Cooper"]



// Create a variable named planes that holds an array with the following values:
//  Cessna 210, Boeing 747, Gulfstream G650, Wright Flyer
var planes: [String] = ["Cessna 210", "Boeing 747", "Gulfstream G650", "Wright Flyer"]



// Create a variable named boats that holds an array with the following values:
//  dugout canoe, The Titanic, paddle boat, yacht, pontoon boat, jet ski, cruise ship, Boston Whaler
var boats: [String] = ["dugout canoe", "The Titanic", "paddle boat", "yacht", "pontoon boat", "jet ski", "cruise ship", "Boston Whaler"]


// Create a variable named vehicles to hold a dictionary.
// The dictionary keys will be strings. Use the following keys: cars, planes, boats
// The dictionary values will be the arrays you created above.
vehicles = [
    "cars": cars,
    "planes": planes,
    "boats": boats
]

// How would we write the number of boats in the dictionary?
// (If Xcode adds a questionmark to your code, it has to do with optionals, which we'll cover soon...)
vehicles["boats"]?.count
