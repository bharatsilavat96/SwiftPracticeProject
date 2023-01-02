//
//  main.swift
//  SwiftCollectionPractice
//
//  Created by Bharat Silavat on 16/12/22.
//

import Foundation

// Concepts Of an Array : -

// Always Create Array Mutable because most of the time you need to change or asign values into it .
// Array Contains Only One type Of elements in fixed Index

// Creating Empty Dictionary
var myArry : [Int] = []
print(myArry.count) // because there is no Item in array but it is not giving error
// ading items to array
myArry.append(7)  // it append values at last Index because it is queue type FIFO
print(myArry) // there is values thet we append above
// Empty the array
myArry = []
print(myArry.count) // here the Array is Empty Now
// Creating the Array with Default Values
var defaultArray = Array(repeating: 0.0, count: 3) // it create array With Defalut value and Store 3 values
print(defaultArray) // Here you see 3 Time the repeating Value
defaultArray.append(3) // here we append element to default Array
print(defaultArray) // now the new value start with last index that is 3
// Creating Arry with Two Arrays
var Another3DoubleValues = Array(repeating: 2.5, count: 3)
var Another6DoubleValues = Array(repeating: 3.5, count: 6)
var SumOfArrays = Another3DoubleValues+Another6DoubleValues
print(SumOfArrays) // here we see all 9 values Together is a Single Array
// Accessign and modifying the Array


// FindOut the Number of Item in An Array
let Count = Another6DoubleValues.count  // .Count is used to Calculate the item in an array
print(Count) // here you will get the Count of An array
// Check if Array is empty or not
print(Another6DoubleValues.isEmpty) // Here You will recieved BOOL Values that is False because the array has items
// appending one or more item to an Array by += Operator
Another6DoubleValues += [5.7,5.7,8.8]
print(Another6DoubleValues) // here is another element added to end of an Array [at last Index]
// Retrieve Or Gettign element of an Array
let MyValues = Another6DoubleValues[4] // here we are searching for value at 4 Index (Not indexPath)
print(MyValues) // here we got Values [3.5 at 4 Index or at 5 place of an array]
// Chnage Value at Givin Index -
Another6DoubleValues[4] = 1.2 // here we have changed the Elemet at 4 index // Index Must be Valid
print(Another6DoubleValues)
// changing element by RangeOperator (to the Given Range)
Another6DoubleValues[2...5] = [1.1,4.4,6.2,3.5] // here we have Changed The Values of index 2 to 5th Index at Once
print(Another6DoubleValues) // here you can see All the Changes after Modifying the Arrays elements
// Now Adding Elements at Given Index by .insert(Elemet, at:Index)
Another6DoubleValues.insert(9.9, at: 4)
print(Another6DoubleValues)
// now remove element from given Index
Another6DoubleValues.remove(at: 4)
print(Another6DoubleValues) // here 9.9 Is removed from Array
// remove last index from array (withour checking count of an array)
Another6DoubleValues.removeLast()
print(Another6DoubleValues) // here the last emelent is removed (8.8)

// Iterating Over An Array : -

for itemsInArray in Another6DoubleValues {
    print(itemsInArray)
}

// iterating over and array with index by calling this function .enumerated()
for (index , elements) in Another6DoubleValues.enumerated(){
    
    print(index , elements)
}

