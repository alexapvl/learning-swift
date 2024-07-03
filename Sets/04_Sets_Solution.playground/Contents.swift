import UIKit

// Sean Allen iOS Dev Launchpad
// Sets Challenge and Solution

// Swift provides three main data types for storing collections of items:
// 1) Arrays are ordered collections of items.
// 2) Sets are _unordered_ collections of _unique_ items.
// 3) Dictionaries are unordered collections of key-value pairs.


// Create a variable named daysOfWeek as a set that holds the following values:
// Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

// Hints:   1) You'll need to declare the variable as a set of strings.
//          2) Remember that you might need to put something around the value of the strings...
var daysOfWeek: Set<String> = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]



// Remove Monday from the set. No one likes Mondays anyway.
daysOfWeek.remove("Monday")



// Add a new day of the week to the set called Codeday
daysOfWeek.insert("Codeday")



// All joking aside, the days of the week should probably not change. How could we create a set but make sure that it's value cannot be changed later?
// Answer: define the set as a constant with the let keyword. Any attempts to add or remove days will fail. Example: use 'let' instead of 'var' when defining the set.
// let daysOfWeek: Set<String> = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]



// Create a new constant named weekendDays that holds the values Saturday and Sunday
let weekendDays: Set<String> = ["Saturday", "Sunday"]



// What are the main advantage to using sets?
// Answer: sets are really _fast_ compared to arrays, especially when the number of items gets vary large.



// What are the main disadvantages?
// Sets are not ordered. Sets cannot contain duplicate values. If you need those two properties in a collection, use arrays.



// Go deeper

// Swift comes with methods for comparing sets.
// Given set1 and set2:

// intersection()           - makes a new set with values that are present in both set1 and set2
// symmetricDifference()    - makes a new set with values that NOT in both set1 and set2.
// union()                  - makes a new set with all the values in both set1 and set2.
// subtracting()            - makes a new set where the values in set2 are taken out of set1 (if present).


// Create a new set called weekDays by using the subtracting method to remove the weekendDays from the daysOfWeek set.
let weekDays: Set<String> = daysOfWeek.subtracting(weekendDays)



// Print the weekDays. It should read Codeday, Tuesday, Wednesday, Thursday, Friday (but probably not in that order).
print(weekDays)
