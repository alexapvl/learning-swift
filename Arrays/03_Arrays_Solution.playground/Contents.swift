import UIKit

// Sean Allen iOS Dev Launchpad
// Arrays Challenge and Solution

// Swift provides three main data types for storing collections of items:
// 1) Arrays are _ordered_ collections of items.
// 2) Sets are unordered collections of unique items.
// 3) Dictionaries are unordered collections of key-value pairs.

// Quick note before we begin: There's no need to use the print statement on any of the prime number examples below. If you do, you may see some warnings about optionals and expressions being "coerced". Don't worry. We'll cover that when we deal with optionals.



// The following is a list of prime numbers that are smaller than 100. They are not in numerical order though.

// 11, 73, 3, 13, 19, 43, 5, 83, 7, 53, 67, 97, 2, 23, 47, 89, 29, 79, 31, 17, 59, 41, 61, 37, 71



// Create a variable named primes that holds an array of these prime numbers. (Do not change the order.)

// To create an array of integers, we can just copy and paste the numbers from above, wrapping them in brackets.
var primes = [11, 73, 3, 13, 19, 43, 5, 83, 7, 53, 67, 97, 2, 23, 47, 89, 29, 79, 31, 17, 59, 41, 61, 37, 71]



// Create a constant named firstElement and set it's value to the first element of the array, which is 11.
// Remember, arrays are zero-based, so the first element is zero!
let firstElement = primes[0]



// Sort the array to put the numbers in order from smallest to largest.
primes.sort()



// Create a constant named smallestPrime and set its value to the smallest number in the array.
// Because arrays are ordered, we can get the first element since we just sorted the array.
let smallestPrime = primes[0]
primes.first  // Or we could have used the first property
primes.min()  // If we hadn't sorted the array, we could still get the smallest value with the min() method.



// Shuffle the prime numbers in random order in the array.
primes.shuffle()



// Add 101, the next prime number, as the last element in the array
primes.append(101)



// Add 103, the next prime number, as the first element of the array.
primes.insert(103, at: 0)



// Add 107, the next prime number, as the 7th element of the array.
// Did you remember? Arrays count up from zero, so we insert the number at position 6, not 7!
primes.insert(107, at: 6)



// How many prime numbers are in the array now?
// The answer should be 28 numbers in the array.
primes.count



// Go Deeper

// The swift language provides many built-in properties and methods for working with data types. You've been using some of them already. myArray.count, myArray.append(), etc are all functionality that Swift gives you for the array type. One nice thing about Xcode is that it will recommend properites and methods for you, and it will explain what they do. When you type a variable's name and type period, Xcode will make suggestions. Try it! One the next blank line, type primes.c and watch how Xcode suggests primes.count and tells you what it does! It even does partial matches. Type primes.verse and it matches primes.reverse.

// Now that you've gained this new super power, can you figure out how to do the following? (Hint: You can always type primes. (that's primes, followed by a period) and then look through the list of suggestions that Xcode displays.



// Delete all the numbers out of the array, making it empty.
primes.removeAll()



// Check whether the array is empty or not
primes.isEmpty



// Can you have an array of arrays? Yes, you can. Let's take a very simple example.
// Imagine a point on a graph. It has an X coordinate and a Y coordinate. It can be stored as an array. A point at the origin would be [0,0]. Now imagine making an array to store multiple points.
// Make an array that stores the following four points:  [1,2]  [-1,4]  [5,7]  [0,10]
let arrayOfPoints = [[1,2],[-1,4],[5,7],[0,10]]



// Print the X coordinate of the 3rd point?
// Since arrays are zero-based, the 2nd element is the 3rd point. This point is stored as an array, and its 0 element is the 1st coordinate (the x coordinate) of this point.
print(arrayOfPoints[2][0])

// If the above example looks confusing, it might help to write it this way
let point3 = arrayOfPoints[2]   // get the 3rd element of the arrayOfPoints, which is [5,7]
let xCoord = point3[0]          // get the 1st element (x coordinate) of the point, which is 5
