//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Variables, Operators 2.6

//Unary, Binary, Ternary

var amICool = true

amICool = !amICool

var feelGoodAboutMyself = true

feelGoodAboutMyself = amICool ? true : false

var bankAccountBalance = 100

var cashRegisterMessage = bankAccountBalance >= 150 ? "You just bought the item" : "You are broke as a joke"

//===========================================================================================================
//Strings in Swift 2.8
//String to klasa, która posiada wiele różnych opcji
//Zalecany sposób tworzenia Stringów
var firstName = "Jack"
var lastName = "Bauer"

var age = 45
var fullName = firstName + " " + lastName
var fullName2 = "\(firstName) \(lastName) is \(age)" //String interpolation

fullName.append(" III")//dodaje do stringa znaki jak w tablicy

var bookTitle = "revenge of the crab cakes"
bookTitle = bookTitle.capitalized //Każde słowo pisane jest z dużej litery

var chatroomAnnoyingCapsGuy = "PLEASE HELP ME NOW! HERE IS MY 100 LINES OF CODE"
var lowerCaseAnnoyingCapsGuy = chatroomAnnoyingCapsGuy.lowercased() // Zamienia znaki z dużej na małą literę

//Heck and Fetch
var sentence = "What the fetch?! Heck that is crazy!"

if sentence.contains("fetch") || sentence.contains("Heck") {
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}

//===========================================================================================================
//Numbers 2.9
//Type inference - recomendet
var ageNumb = 30

//Explicity declared type
var weight:Int = 200

var someNumb:Double = 12345678987654321

var milesRan = -56.45

var pi:Float = 3.14


//Arithmetic Operators
// + - / *
var area = 15 * 20

var sum = 5 + 6

var diff = 10 - 3

var div = 12 / 3

var div1 = 13 / 5

var remainder = 13 % 5

var result = "The result of 13 / 5 is \(div1) with a remainder of \(remainder)"

var randomNumber = 12

if randomNumber % 2 == 0 {
    print("this is an even number")
} else {
    print("this is an odd number")
}

var result2 = 15 * ((5 + 7) / 3)

//===========================================================================================================
//Functions 2.10
//
//Shape 1
var length = 5
var width = 10

var are1A = length * width

//Shape 2
var length2 = 6
var width2 = 12

var area2A = length2 * width2

//Shape 3
var length3 = 3
var width3 = 8

var area3A = length3 * width3

func calculateArea(lenght: Int, width: Int) -> Int {
    return lenght * width
}

let shape1 = calculateArea(lenght: length, width: width)
let shape2 = calculateArea(lenght: length2, width: width2)
let shape3 = calculateArea(lenght: length3, width: width3)

var bankAccountBalance1A = 500.00
var sigourneyWeaverAlienStomperShoes = 350.00

//inout - modyfikuje wejściowy parametr, wskaźnik na parametr
func purchaseItem(currentBalance: inout Double, itemPrice: Double){
    if itemPrice <= currentBalance {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for: $\(itemPrice)")
    } else {
        print("You are broke. You should learn how to save money.")
    }
}

purchaseItem(currentBalance: &bankAccountBalance1A, itemPrice: sigourneyWeaverAlienStomperShoes)

var retroLunchBox = 40.00

purchaseItem(currentBalance: &bankAccountBalance1A, itemPrice: retroLunchBox)

//===========================================================================================================
//Bool's 2.11
var amITheBestTeacherEver: Bool = true

amITheBestTeacherEver = false

if true == false || true == true {
    print("WTFish")
}

var hasDataFinishedDownloading: Bool = false

// #colorLiteral(red: 0.1176470588, green: 0.3147566319, blue: 0.9989275336, alpha: 1)

if !hasDataFinishedDownloading {
    print("Loading data...")
}

hasDataFinishedDownloading = true
//Load UI and other app features



// Equal to: ==
// Not equal to: !=
// Greater than: >
// Greater than or equal to: >=
// Less than or equal to: <=
// Less than: <

var bankBalance = 400
var itemToBuy = 400

if bankBalance >= itemToBuy {
    print("purchased item")
}

if itemToBuy > bankBalance {
    print("You need mo' money foo")
}

if itemToBuy == bankBalance {
    print("Hey buddy, your balance is now 0")
}

var bookTitle1 = "Harry Glo"
var bookTitle2 = "Harry Glo"

if bookTitle1 != bookTitle2 {
    print("Need to fix spelling before printing")
} else if bookTitle2.characters.count > 10 {
    print("find a new title for the book")
} else {
    print("Book looks great send to printer")
}

//===========================================================================================================
//Constants & logic operators 2.12

let allowedEntry = false

if !allowedEntry {
    print("ACCESS DENIED")
}

let enteredDoorCode = true
let passedRetinaScan = false
let iAmTomCruiseFromMissionImpossible = false

if enteredDoorCode && passedRetinaScan || iAmTomCruiseFromMissionImpossible {
    print("Welcome")
} else {
    print("ACCESS DENIED AGAIN")
}

let hasDoorKey = false
let knowsOverridePassword = true

if hasDoorKey || knowsOverridePassword {
    print("Welcome!!!")
} else {
    print("YOU STILL AIN'T GETTING IN FOOL!")
}

//===========================================================================================================
//Array data structure 2.13

var employee1Salary = 45000.0
var employee2Salary = 54000.0
var employee3Salary = 100000.0
var employee4Salary = 20000.0

var employeeSalaries: [Double] = [45000.0,54000.0,100000.0, 20000.0]

print(employeeSalaries.count)

employeeSalaries.append(39000.34)

print(employeeSalaries.count)

employeeSalaries.remove(at: 1)

print(employeeSalaries.count)

var students = [String]()

print(students.count)

students.append("Jon")
students.append("Jacob")
students.append("Jose")
students.append("Jingle")
students.append("Heimer")
students.append("Smith")

students.remove(at: 2)

print(students)

//New Empty array
var myDataArray = [Double]()
myDataArray.count

var myDataArray2 = [Double](arrayLiteral: 463, 123, 543)
var myCapacity = myDataArray2.capacity
var myData = myDataArray2[0]

//Opis w string
var myData2 = myDataArray2.description
print(myData2)

myDataArray2.removeAll(keepingCapacity: true)
myDataArray2.capacity
print(myDataArray2)

//===========================================================================================================
//Loops 2.14

//Bad way
var employee1Salary2 = 45000.0
var employee2Salary2 = 100000.0
var employee3Salary2 = 54000.0
var employee4Salary2 = 20000.0

employee1Salary2 = employee1Salary2 + (employee1Salary2 * 0.10)
employee2Salary2 = employee2Salary2 + (employee2Salary2 * 0.10)
employee3Salary2 = employee3Salary2 + (employee3Salary2 * 0.10)
employee4Salary2 = employee4Salary2 + (employee4Salary2 * 0.10)


//Mo' Betta
var salaries = [45000.0,100000.0,54000.0,20000.0,45000.0,100000.0,54000.0,20000.0,45000.0,100000.0,54000.0,20000.0,45000.0,100000.0,54000.0,20000.0,45000.0,100000.0,54000.0,20000.0,45000.0,100000.0,54000.0,20000.0,45000.0,100000.0,54000.0,20000.0]

salaries[0] = salaries[0] + (salaries[0] * 0.10)
salaries[1] = salaries[1] + (salaries[1] * 0.10)
//...

var index = 0
repeat {
    salaries[index] = salaries[index] + (salaries[index] * 0.10)
    index += 1
} while (index < salaries.count)

for x in 1...5 {
    print("Index: \(x)")
}

for z in 1..<5 {
    print("Index Z: \(z)")
}

for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
}

for salary in salaries {
    print("Salary: \(salary)")
}

//===========================================================================================================
//Dictionaries 2.15
//In Swift HastTable are Dictionaries
//There are 3 collection types in Swift
// 1. Array - one type of data in order
// 2. Set - hase items of one type, they are not ordered
// 3. Dictionary - <key, value>, they are not ordered, key is unique

var namesOfIntegers = [Int: String]()

//3 is name of the key
namesOfIntegers[3] = "three"

//Clear out the dictionary
namesOfIntegers = [:]


//Dictionary literals explicitly declared
var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

print("The airports dictionary contains: \(airports.count) items")

if airports.isEmpty {
    print("There are no airports due to the ape invasions")
}

//Add new item
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["DEV"] = "Devslopes International"

//Remove an item
airports["DEV"] = nil

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}

airports.customMirror

//===========================================================================================================
//OOP 2.16 (Object Oriented Programming)
class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        //accelerate the vehicle
    }
    
    func brake() {
        
    }
}

let bmw = Vehicle()
bmw.model = "328i"

let ford = Vehicle()
ford.model = "F150"
ford.brake()

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Cheese"
}

print(ford.model)

passByReference(vehicle: ford)

print(ford.model)

var someonesAge = 20

func passByValue(age: Int) {
    _ = age
}

passByValue(age: 15)

someonesAge

//===========================================================================================================
//Inheritance 2.17
//Dziedziczenie

class MyVehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        print("I am the parent class")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
}

class Truck: MyVehicle {
    
    override init() {
        super.init()
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease
    }
}

class SportsCar: MyVehicle {
    override init() {
        super.init()
        print("I am the child")
        make = "BMW"
        model = "3 series"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 3
    }
}

let car = SportsCar()


//===========================================================================================================
//Inheritance and Polymorphism 2.18
//Dziedziczenie i wielopostaciowość

class MyShape {
    var area:Double?
    
    func calculateArea(valA: Double, valB: Double){
        
    }
}

class Triangle: MyShape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangle: MyShape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB)
    }
}

//===========================================================================================================
//MARK: - Optionals 2.19
//Force Unwrapping - gdy wartość opcjonalną potraktuje znakiem "!"

let optionalImage: UIImage? = #imageLiteral(resourceName: "nil.png")

let nonOptionalImage: UIImage = #imageLiteral(resourceName: "5.png")

var optionalNumber: Int? = 5
var number: Int = 5

if optionalNumber != nil {
    print("optionalNumber has a value of \(optionalNumber)")
} else {
    //handle error
}

//Optional banding
if let constantNumber = optionalNumber {
    print("constant number has value of \(constantNumber)")
} else {
    print("optionalNumber is nil")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else {return}
    print("optionalNumber has a value of \(constantNumber).")
}

intPrinter()

// Forced Unwrapping
let optionalValue: Int? = 123
let forcedValue: Int = optionalValue!

//Implicity Unwrapped Optional
let assumedValue: Int! = 123 //Musi tutaj być wartość
let implicitValue: Int = assumedValue

// MARK: – Nil Coalescing & Ternary Operator:
let optionalInt: Int? = nil
let resultOpt = optionalInt ?? 0 //jeśli nie ma wartości w pierwszym, wstawia 0

print("The result is \(resultOpt).")

// MARK: - Optional Chaining:
class ComicConAttendee {
    var admissionBadge: AdmissionBadge?
    
    init(badge: AdmissionBadge?) {
        self.admissionBadge = badge
    }
}

class AdmissionBadge {
    var numberOfDays: Int
    
    init(days: Int) {
        self.numberOfDays = days
    }
}

let admissionBadge = AdmissionBadge(days: 3)
let attendee = ComicConAttendee(badge: admissionBadge)

if let daysAttendable = attendee.admissionBadge?.numberOfDays {
    print("This attendee can enter Comic Con for \(daysAttendable) days.")
} else {
    print("This person is not an attendee. Please refer them to the ticket desk.")
}


//===========================================================================================================
//MARK: - Enumerations 2.20
//
//Enum syntax
enum NameOfEnum {
    case caseOne
    case caseTwo
    case caseThree
}

let enumeration: NameOfEnum = .caseOne
let enumeration1: NameOfEnum = .caseTwo
let enumeration2: NameOfEnum = .caseThree

// MARK: - Enum with Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)
productBarcode = .qrCode("sdfh8q298ej1d02j0msd01j20wiok")

//Switch musi posiadać wszystkie opcje z enum bądź default
switch productBarcode {
case let .upc(numberSystem, manufacturer, productCode, check):
    print("UPC: \(numberSystem), \(manufacturer), \(productCode), \(check)")
case let .qrCode(productCode):
    print("QR Code : \(productCode)")
}

// MARK: - Enum with Cases & Raw Values
enum JediMaster: String {
    case yoda = "Yoda"
    case maceWindu = "Mace Windu"
    case quiGonJinn = "Qui-Gon Jinn"
    case obiWanKenobi = "Obi-Wan Kenobi"
    case lukeSkywalker = "Luke Skywalker"
}

print(JediMaster.lukeSkywalker.rawValue)

// MARK: - Practical Example
enum SwitchStatus {
    case on
    case off
}

func flipSwitch(status: SwitchStatus) -> SwitchStatus {
    if status == .off {
        return .on
    } else {
        return .off
    }
}

var status: SwitchStatus = .off

flipSwitch(status: status)

status = .on

flipSwitch(status: status)

//===========================================================================================================

//===========================================================================================================

//===========================================================================================================

//===========================================================================================================




































