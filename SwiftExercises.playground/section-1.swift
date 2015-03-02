import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String
{
    // WORK HERE
    var fullSenetence = "My favorite cheese is " + cheese
    return fullSenetence
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
numberDictionary[5] = "five"
numberDictionary
/*
Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for item in 1...10
{
    println(item)
}
// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for item in 1..<11
{
    println(item)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]


let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    var favoriteDrinks = [String]()
    
    for dictionaryArray in characters
    {
        for (key, value) in dictionaryArray
        {
            if (key == "favorite drink")
            {
                favoriteDrinks.append(value)
            }
        }
    }
    
    return favoriteDrinks
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func arrayToString(arrayValue: Array<String>) -> String
{
    var stringValue = ";".join(arrayValue)
    
    return stringValue
}

//Testing:
arrayToString(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

let sortedCerealArray = sorted(cerealArray, <)
