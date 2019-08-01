# JavaScript to Swift Cheat Sheet

## Table of Contents

   * [JavaScript to Swift Cheat Sheet](#javascript-to-swift-cheat-sheet)
   * [Variables](#variables)
      * [Declaring variables](#declaring-variables)
      * [Variables vs. constants](#variables-vs-constants)
   * [Selection (if) statements](#selection-if-statements)
      * [Selection (if) statements - binary selection](#selection-if-statements---binary-selection)
      * [Selection (if) statements - multiway selection](#selection-if-statements---multiway-selection)
   * [Repetition (loop) statements](#repetition-loop-statements)
      * [Repetition (loop) statements - for loop (less than condition)](#repetition-loop-statements---for-loop-less-than-condition)
      * [Repetition (loop) statements - for loop (less than, or equal to, condition)](#repetition-loop-statements---for-loop-less-than-or-equal-to-condition)
      * [Repetition (loop) statements - while loop](#repetition-loop-statements---while-loop)
      * [Repetition (loop) statements - do while loop](#repetition-loop-statements---do-while-loop)
   * [String operations](#string-operations)
      * [String concatenation](#string-concatenation)
      * [String interpolation](#string-interpolation)
   * [Functions](#functions)
      * [Custom functions - no parameters or return](#custom-functions---no-parameters-or-return)
      * [Custom functions - parameters no return](#custom-functions---parameters-no-return)
      * [Custom functions - parameters and return](#custom-functions---parameters-and-return)
   * [Arrays](#arrays)
      * [Creating an empty array](#creating-an-empty-array)
      * [Creating an array with data](#creating-an-array-with-data)
      * [Common array operations in Swift](#common-array-operations-in-swift)
      * [Strings and arrays](#strings-and-arrays)
   * [Dictionaries](#dictionaries)
      * [Creating an empty dictionary](#creating-an-empty-dictionary)
      * [Creating a dictionary with data](#creating-a-dictionary-with-data)
      * [Common dictionary operations in Swift](#common-dictionary-operations-in-swift)

## Variables

### Declaring variables

Here are declarations for some variables in **JavaScript**:

```javascript
var myInt = 1;
var myString = "Hello";
var myBool = true;
var myArray = ["Hello", "World"];
var myObject = { foo: "bar" };
var aMystery;
```

Here are the declarations for the same variables in **Swift**:

```swift
var myInt: Int = 1
var myString: String = "Hello"
var myBool: Bool = true
var myArray: Array<String> = ["Hello", "World"]
var myDict: Dictionary<String, String> = [ "foo": "bar" ]
```

In fact, similar to JavaScript, you don't need to declare the data type:

```swift
var myInt = 1
var myString = "Hello"
var myBool = true
var myArray = ["Hello", "World"]
var myDict = [ "foo": "bar" ]
```

Swift has a *type inference* engine which can determine the data type based upon the inital value assigned to the variable.

However, if you need to declare a variable and it does not have an initially assigned (so the variable is initialised as `nil`), such as `aMystery` then you **must** specify the data type.

```swift
var aMystery: Int?
```

Swift is a *strongly typed* language so all variables need a specific data type, unlike JavaScript which is *weakly typed* and does not have this requirement. You might also notice the `?`. This is called an optional, and we will discuss that later.

### Variables vs. constants

If you declare a variable and you never change its value then you should declare it as a constant using the `let` keyword:

```swift
let myInt = 1;
let myString = "Hello"
```

They can be used exactly like a variable, just they cannot be changed - making your code safer and guarding against other parts of the program inadvertantly modifying data that should not be changed.

## Selection (if) statements

### Selection (if) statements - binary selection

Binary (if-else) selection in **JavaScript**:

```javascript
var myInteger = 4;

if (myInteger < 5) {
  console.log("My integer is less than 5");
}

else {
  console.log("My integer is greater than, or equal to, 5");
}
```

The equivalent in **Swift**:

```swift
let myInteger = 4

if myInteger < 5 {
  print("My integer is less than 5")
}

else {
  print("My integer is greater than, or equal to, 5")
}
```

The above has introduced a few new concepts, in addition to the if statement construct:

* In Swift you do not end lines with a semicolon `;`. You actually can and it won't error, but it's unnecessary.

* Do not bracket conditions on `if` statements in Swift. You only bracket conditions if there are multiple conditions, for example: `if (myInteger < 5) && (doStuff == true)`.

* If you want to print something to the console in Swift you use `print`. This is only useful for your own debugging, as on an iOS device the user obviously won't have access to the console!

### Selection (if) statements - multiway selection

Multiway selection in **JavaScript**:

```javascript
var myInteger = 4;

if (myInteger < 5) {
  console.log("My integer is less than 5");
}

else if (myInteger < 10) {
  console.log("My integer is less than 10");
}

else {
  console.log("My integer is greater than, or equal to, 5");
}

```

The equivalent in **Swift**:

```swift
var myInteger = 4
        
if myInteger < 5 {
   print("My integer is less than 5")
}
        
else if myInteger < 10 {
   print("My integer is less than 10")
}
        
else {
   print("My integer is greater than 10")
}
```

## Repetition (loop) statements

### Repetition (loop) statements - for loop (less than condition)

`for` loop in **JavaScript**:

```javascript
var myInteger = 5;

for (var i = 0; i < myInteger; i++) {
  console.log(i);
}
```

The equivalent in **Swift**:

```swift
var myInteger = 5

for i in 0..<myInteger {
  print(i)
}
```

### Repetition (loop) statements - for loop (less than, or equal to, condition)

`for` loop in **JavaScript**:

```javascript
var myInteger = 5;

for (var i = 0; i <= myInteger; i++) {
  console.log(i);
}
```

The equivalent in **Swift**:

```swift
var myInteger = 5

for i in 0...myInteger {
  print(i)
}
```

### Repetition (loop) statements - while loop

`while` loop in **JavaScript**:

```javascript
var i = 5;

while (i <= 5) {
  console.log(i);
  i++;
}
```

The equivalent in **Swift**:

```swift
var i = 0
        
while i <= 5 {
  print(i)
  i += 1
}
```

Things to note:

* Notice how we cannot use `i++` in Swift? See [SE-0004](https://github.com/apple/swift-evolution/blob/master/proposals/0004-remove-pre-post-inc-decrement.md) for more details.

### Repetition (loop) statements - do while loop

`do while` loop in **JavaScript**:

```javascript
var i = 5;

do {
  console.log(i);
  i++;
} while (i <= 5)
```

The equivalent in **Swift**:

```swift
var i = 5
        
repeat {
  print(i)
  i += 1
} while i <= 5

```

## String Operations

### String concatenation

String concatenation is the act of joining strings together.

An example of string concatenation in **JavaScript**:

```javascript
var name = "Lauren";
var age = 14;
var newString = "Hello, my name is " + name + " and my age is " + age;
```

The equivalent in **Swift**:

```swift
let name = "Lauren"
let age = 14
let newString = "Hello, my name is " + name + " and my age is " + String(age)
```

Notice how we're using `String(age)` to concatenate `age`, which is a number, into the string. This is because to combine different values and variables, they need to be all of the same type. Since `age` is an `Int`, it needs to be explicitly converted to a string to be used in concatenation, unlike JavaScript where it's implicitly converted and you don't have to worry about it.

### String concatenation within a function

You can pass multiple arguments to `print`, separated by a comma, and they will be joined into one string and printed, but the comma also inserts a space. That's why this:

```swift
print("Hello, my name is", name, "and my age is", String(age))
```

Successfully prints:

```swift
"Hello, my name is Lauren and my age is 14"
```

To the console.

### String interpolation

String interpolation is the act of inserting a variable (or variables) into a string. This is known as *template literals* in JavaScript (ES6) but is more commonly known as *string interpolation*.

String interpolation is a much better alternative to using string concatanation in many situations.

An example of string interpolation in **JavaScript**:

```javascript
var name = "Lauren";
var age = 14;
var newString = `Hello, my name is ${name} and my age is ${age}`;
```

The equivalent in **Swift**:

```swift
let name = "Lauren"
let age = 14
let newString = "Hello, my name is \(name) and my age is \(age)"
```

## Functions

### Custom functions - no parameters or return

Custom function (with no parameters or return) in **JavaScript**:

```javascript
function myFunction() {
  // Do stuff
}
```

To call the function: `myFunction()`

The equivalent in **Swift**:

```swift
func myFunction() {
  // Do stuff
}
```

To call the function, simply do `myFunction()`.

### Custom functions - parameters no return

Custom function (with parameters but no return value) in **JavaScript**:

```javascript
function myFunction(name, age, house, boarder) {
  // Do stuff
}
```

To call the function:

```javascript
myFunction("James", 14, "Edwards", false);
```

The equivalent in **Swift**:

```swift
func myFunction(name: String, age: Int, house: String, boarder: Bool) {
  // Do stuff
}
```

To call the function:

```swift
myFunction(name: "James", age: 14, house: "Edwards", boarder: false)
```

### Custom functions - parameters and return

Custom function (with parameters and a return value) in **JavaScript**:

```javascript
function myFunction(name, age, house, boarder) {
  // Do stuff
  return "Hello";
}
```

To call the function:

```javascript
var result = myFunction("James", 14, "Edwards", false);
```

The equivalent in **Swift**:

```swift
func myFunction(name: String, age: Int, house: String, boarder: Bool) -> String {
  // Do stuff
  return "Hello"
}
```

To call the function:

```swift
let result = myFunction(name: "James", age: 14, house: "Edwards", boarder: false)
```

## Arrays

### Creating an empty array

Creating an empty array in **JavaScript**:

```javascript
var namesArray = [];
```

The equivalent in **Swift**:

```swift
var namesArray = [String]()
```

Remember, Swift is a strongly-typed language so you need to specify the data type being stored in the array at the time the array is created.

There are also two other ways you can declare an empty array of a particular data type in Swift:
```swift
var namesArray: Array<String> = [] // Longhand

var namesArray: [String] = []      // Shorthand
```

The way you choose to define an empty array is purely down to personal choice - they all have the exact same result.

### Creating an array with data

Creating an array with data in **JavaScript**:

```javascript
var namesArray = ["Matt", "Jack", "Angus", "James"];
```

The equivalent in **Swift**:

```swift
var namesArray = ["Matt", "Jack", "Angus", "James"]
```

There's no need to specify the data type of the array, as the type inference engine in Swift can make that determination from the inital data.

### Common array operations in Swift

To **access** an item in an array:

```swift
let namesArray = ["Matt", "Jack", "Angus", "James"]

print(namesArray[1]) // this will print "Jack" to the console
```

To **add** an item to an array:

```swift
// will add "Lauren" to the end of the namesArray
namesArray.append("Lauren")
```

To **insert** an item into an array:

```swift
// will add "Lauren" to the array at index 0 (which, in this case, is the front of the array)
namesArray.insert("Frida", at: 0)
```

To **remove** an item from an array, when you know the index:

```swift
// will remove the item at array index 1
namesArray.remove(at: 1)
```

To **remove** an item from an array, when you don't know the index:

```swift
// this will find the location of "Jack" in namesArray
if let indexValue = namesArray.firstIndex(of: "Jack") {

  // this will only run if "Jack" is found in namesArray, to avoid an error if it's not found
  namesArray.remove(at: indexValue)

}
```

To **loop or iterate** through every item in an array:

``` swift
let namesArray = ["Matt", "Jack", "Angus", "James"]

for i in 0..< namesArray.count {
  let item = namesArray[i]
  print(item)
}
```

...or an alternative way to **loop or iterate** through every item in an array when you don't require access to the index of the item:

```swift
let namesArray = ["Matt", "Jack", "Angus", "James"]

for item in namesArray {
  print(name)
}
```

### Strings and arrays

Say that you need to access each individual character in a string. The easiest way is to **convert the string into an array of characters**, and you can then loop over that array (using the methods above) to get each individual character.

```swift
let string = "Hello"
let charArray = Array(string)
```

This will result in `charArray` being `["h", "e", "l", "l", "o"]`.

You could then loop through `charArray` to access each individual character:

```swift
for char in charArray {
  print(char)
}
```

## Dictionaries

JavaScript objects are actually not *really* objects - they are dictionaries. In Swift, objects are quite different. We'll cover that later - for the moment we will just look at dictionaries.

### Creating an empty dictionary

Creating an empty dictionary in **JavaScript**:

```javascript
var studentDictionary = { };
```

The equivalent in **Swift**:

```swift
var studentDictionary = [String: Int]()
```

or

```swift
var studentDictionary = Dictionary<String, Int>()
```

Whichever you use is personal preference, they do the same thing.

Remember, Swift is a strongly-typed language so you need to specify the data type being used for the key (the first `String`) and the value (the second `Int`). Unlike JavaScript, where the key was always a string, you can define the type of the key in Swift. 

### Creating a dictionary with data

Creating a dictionary with data in **JavaScript**:

```javascript
var pizzaCountDictionary = {
  hawaiian: 4,
  meatlovers: 10,
  supreme: 5
};
```
Creating a dictionary with data in **Swift**:

```swift
var pizzaCountDictionary = [
  "hawaiian": 4,
  "meatlovers": 10,
  "supreme": 5
]
```

### Common dictionary operations in Swift

To **add** a key and value to a dictionary:

```swift
// will add a new key to the dictionary "cheese" with the value 4
pizzaCountDictionary["cheese"] = 4
```

To **remove** a key and value to a dictionary:

```swift
// will remove the key "cheese" and associated value from the dictionary
pizzaCountDictionary["supreme"] = nil
```

or

```swift
// will remove the key "cheese" and associated value from the dictionary
pizzaCountDictionary.removeValue(forKey: supreme)
```

To **loop or iterate** through every item in an array:

```swift
for (key, value) in pizzaCountDictionary {
  print("\(key): \(value)")
}
```

There are no insertion methods as dictionaries do not have any order - only arrays have order.