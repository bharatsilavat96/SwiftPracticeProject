//
//  main.swift
//  PracticeOnDictionaries
//
//  Created by Bharat Silavat on 17/12/22.
//

import Foundation

// Practice On Dictionary

// it is a collection that store elements in key values pair with same type of declared Data with no defined order
// here keys is the identifier of value or values
// Values will Always Be Optional

// Creating empty Dictionary
var nameOfIntegerValues : [Int:String] = [:] // here key is Int type and Value is of String Type .
// assigning the Key and Value to Dictionary
nameOfIntegerValues[1] = "Bharat"
print(nameOfIntegerValues) // here you can see Key and Value at same Time
print(nameOfIntegerValues[1]!) // here you will see Value of Key 1 (Value will be optional Always)
// Now Create Dictionary with Multiple Keys And values
var dictionaryWithMultpleKeys = [1:"Bharat",2:"Swapnil",3:"Uday",4:"Amit",5:"Rajesh"]
print(dictionaryWithMultpleKeys) // here you will see all Keys and Values as well
print((dictionaryWithMultpleKeys).keys) // here you will see all Keys at One Place
// Noew Creating Keys With MultipleValues
var multipleKeys : [Int:String] = [1:"A",2:"B",3:"C",4:"D",5:"E"] // here you will see 2keys

// Accessign and Modifying dictionary
// finfout numbers of items in dictionary
print(multipleKeys.count) // here you will see count of keys (count of elements in dictionary)
print(multipleKeys.isEmpty) // here you will see dictionary is empty or not (get False as dict in not empty)
// edding elements to dictionary
multipleKeys[2] = "NewElemeng"
print(multipleKeys) // here element got 2nd Index (Note - there is no fix Index (defined order))
// you can also Update Keys Value by this method
multipleKeys.updateValue("MultipleFunctionValueForKey2", forKey: 2) //here You will see key2's value is replaced
// you can also add new key value pair using same Comand
multipleKeys[6] = "this is Sixth Value"
print(multipleKeys)
// Now retrived value from key or geeting Keys Values
print(multipleKeys[2]!) // here you will get the Value of key 2
// removinf valus of any key by assigning it to nil (because Values are Optional Always)
multipleKeys[2] = nil
print(multipleKeys) // there is no value for key 2 (newValue is Removed)(But keys is also not Showing)
print(multipleKeys.keys) // we are not seeing Key No 2
// now assigning Value to key
multipleKeys[2] = "NewValueOfKey2"
print(multipleKeys.keys) // here you can see key
print(multipleKeys)// here you can see key and Value Both

// Iterating Over Dictionary
for (key, value) in multipleKeys{
    
    print(key,value)
}

// also you can access key  seperately

for keys in multipleKeys.keys{
    print(keys)
}





