// Playground - noun: a place where people can play

import UIKit
import XCPlayground

//Number Variables:
func incrementBy(amount: Int) -> Int
{
    var result = amount + amount
    //var result = ++amount
    //I'm getting an error stating that '++' cannot be invoked with type Int.
    return result
}

func addNumbers(number1: Int, number2: Int) -> Int
{
    var result = (number1 + number2)
    return result
}

func remainderOfNumbers(dividend: Int, divisor: Int) -> Int
{
    var result = (dividend % divisor)
    
    if (result != 0)
    {
        return result
    }
    
    else
    {
        return 0
    }
}

//Strings and String Formatting:
func favoriteCheese(cheeseName: String) -> String
{
    var favorite = cheeseName
    var sentence = "My favorite cheese is "
    var fullSentence = sentence + favorite
    
    return fullSentence
}

//HAVING TROUBLE WITH THIS ONE -  STILL WORKING ON IT
func cheeseWithoutCheeseSuffix(cheeseName: String) -> String
{
    var name = cheeseName
    var range = cheeseName.rangeOfString("cheese")
    
    if (range == nil)
    {
        return name;
    }
    
    else
    {
        let test = cheeseName.stringByReplacingCharactersInRange(range!, withString: "")
        return test
    }
}

func numberOfCheeseInString(cheeseCount: Int) -> String
{
    var cheeseCountString = ""
    var countToString = toString(cheeseCount)
    var cheeseString = " cheeses"
    
    if (cheeseCount == 1)
    {
        cheeseCountString = "1 cheese"
    }
    
    else
    {
        cheeseCountString = countToString + cheeseString
    }
    
    return cheeseCountString
}

//If/Else Statements and Ternary Operator:
func itemsMaryCanPurchase(dollars: Int) -> String
{
    var itemToReturn = ""
    
    if (dollars == 4)
    {
        itemToReturn = "get out of my store"
    }
    
    else if (dollars == 5)
    {
        itemToReturn = "have some gum"
    }
    
    else if (dollars == 6)
    {
        itemToReturn = "have an apple"
    }
    
    else if (dollars >= 1000 && dollars < 1000000000)
    {
        itemToReturn = "have an Apple computer"
    }
    
    else if (dollars == 1000000000)
    {
        itemToReturn = "have The Big Apple"
    }
    
    else
    {
        itemToReturn = "We don't have anything to sell you, Mary."
    }
    
    return itemToReturn
}

func dollarCostForAppleVodka() -> Int
{
    var cost = 24
    var getsDiscount = true
    var discount = 0.75
    
    if (getsDiscount)
    {
        //STILL WORKING ON THIS
        cost *= discount
    }
    
    return cost
}

//Equality:
func checkIfStringsAreEqual(string1: String, string2: String) -> Bool
{
    var checkIsEqual = (string1 == string2) ? true : false
    
    return checkIsEqual
}

func checkIfNumbsAreEqual(number1: Int, number2: Int) -> Bool
{
    var checkEqual = (number1 == number2) ? true : false
    
    return checkEqual
}

func checkIfGreaterThan(number1: Int, number2: Int) -> Bool
{
    var checkIsGreaterThan = (number1 > number2) ? true : false
    
    return checkIsGreaterThan
}

//Loops:
func stringsWithRangeOfNumbers(number1: Int, number2: Int) -> String
{
    var stringWithNums = ""
    var max = (number1 > number2) ? number1 : number2
    var min = (number1 < number2) ? number1 : number2
    
    if (max != min)
    {
        while (min <= max)
        {
            stringWithNums = stringWithNums + toString(min)
            min++
        }
    }
    
    else
    {
        stringWithNums = toString(max)
    }
    
    return stringWithNums
}

func arrayToString(characterArray: Array<String>) -> String
{
    let arrayString = ";".join(characterArray)
    
    return arrayString
}

func alphaSortedArray(characterArray: Array<String>) -> Array<String>
{
    //STILL WORKING ON THIS ONE
    var sortedArray = characterArray.sorted(<#isOrderedBefore: (String, String) -> Bool##(String, String) -> Bool#>)
    
    return sortedArray
    
}

func arrayContainsWorf(characterArray: Array<String>) -> Bool
{
    var result = true
    
    var predicateTest = NSPredicate(format: "self contains [c] 'worf'", characterArray)
    var filterArray = characterArray.filter() { $0 == "worf"}
    
    if (filterArray.count == 0)
    {
        result = false
    }
    
    else
    {
        result = true
    }
    
    return result
}

//Dictionaries
func favoriteStarTrekCharacterDict(characterDictionary: Dictionary<String>,<String>) -> String
{
    var faveDrink = ""
    
    if (characterDictionary.objectForKey("favorite drink"))
    {
        faveDrink = characterDictionary.valueForKey("favorite drink")
    }
    
    else
    {
        faveDrink = nil
    }
    
    return faveDrink
}

func arrayOfFavoriteStarTrekCharacters(charactersArray: Array<String>) -> Array<String>
{
    var faveDrinkArray = Array<String>()
    faveDrinkArray += charactersArray
    
    return faveDrinkArray
}

func dictionaryWithQuoteAddedToStarTrekCharacters(characterDictionary: Dictionary<String>,<String>) -> Dictionary<String>;<String>
{
    var mutDict = []
    
    //STUCK ON THIS ONE. NEED TO RESEARCH FURTHER
}

//Simple Data Types and Objects:
func numberTwiceAsBigAsNumber(number: NSNumber) -> NSNumber
{
    var intValue = number.integerValue
    var doubleIntValue = (intValue * 2)
    
    let doubleNumber: NSNumber = doubleIntValue
    
    return doubleNumber
}

func numbersBetweenNumber(number1: Int, number2: Int) -> Array<NSNumber>
{
    var numbersArray = [Int]()
    
    var minNumber = (number1 < number2) ? number1 : number2
    var maxNumber = (number1 > number2) ? number1 : number2
    
    while (minNumber <= maxNumber)
    {
        numbersArray.append(minNumber)
        minNumber++
    }
    
    return numbersArray
}

func lowestNumberInArray(arrayOfNumbers: Array<Int>) -> Int
{
    if (arrayOfNumbers.isEmpty)
    {
        print("Empty Array!")
    }
    
    else
    {
        let numMin = arrayOfNumbers.reduce(Int.max, { min($0, $1) })
        return numMin
    }
    
    return 0
}

//Properties
class StuffRememberer {
    //Properties (.h)
    var myArray = [String]()
    var myFloat = 0.0
    
    //Methods (.m)
    func rememberThisArray(arrayToRemember: Array<String>)
    {
        self.myArray = arrayToRemember
    }
    
    func copyThisArray(arrayToRemember: Array<String>)
    {
        //NOT SURE IF THIS CORRECT - trying to find ways to copy and array (if possible)
        self.myArray = arrayToRemember
    }
    
    func rememberThisFloat(floatToRemember: Double)
    {
        //Using double because I'm having trouble declaring a float (myFloat)
        self.myFloat = floatToRemember
    }
    
    func arrayToRemember() -> Array<String>
    {
        if (self.myArray.count > 0)
        {
            return self.myArray
        }
    }
    
    func arrayToCopy() -> Array<String>
    {
        if (self.myArray.count > 0)
        {
            return self.myArray
        }
    }
    
    func floatToRemember() -> Double
    {
        if (self.myFloat.isZero)
        {
            return 0
        }
        
        else
        {
            return self.myFloat
        }
    }
}
