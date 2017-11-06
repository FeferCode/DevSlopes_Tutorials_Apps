//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//===========================================================================================================
//Extensions 2.21

class MyClass {
    //Functionality
}

extension MyClass {
    //Extendet funcionality
}

extension String {
    func reverse() -> String {
        var characterArray = [Character]()
        for character in self.characters {
            characterArray.insert(character, at: 0)
        }
        return String(characterArray)
    }
}

var name = "Marty McFly"
name.reverse()

extension Int {
    func square() -> Int {
        return self * self
    }
}

var value = 9
value.square()
print(value)

//mutating zmienia pierwotną wartość na naszą
//inaczej wyskoczy błąd przy zmianie wartości "self"
extension Double {
    mutating func calculateArea() {
        let pi = 3.1415
        self = pi * (self * self)
    }
}

class Circle {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
}

var circle = Circle(radius: 3.3)
print(circle.radius)

circle.radius.calculateArea()
print(circle.radius)

//===========================================================================================================
//Extensions(2) 2.22
//W oddzielnym programie

//===========================================================================================================
//Protocols and Delegates 2.23
//Protocol syntax
//W protokołach nie umieszczamy implementacji funkcji
protocol Number {
    var floatValue: Float { get }
}

extension Float: Number {
    var floatValue: Float {
        return self
    }
}
extension Double: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension Int: Number {
    var floatValue: Float {
        return Float(self)
    }
}

extension UInt: Number {
    var floatValue: Float {
        return Float(self)
    }
}

let three: Double = 3
let four: Float = 4.3
four.floatValue
three.floatValue

func +(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue + valueB.floatValue
}

func -(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue - valueB.floatValue
}

func /(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue / valueB.floatValue
}

func *(valueA: Number, valueB: Number) -> Float {
    return valueA.floatValue * valueB.floatValue
}

let x: Double = 1.234567
let y:Int = 5
let q = x / y

class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query: String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}

enum QuestionType:String {
    case trueFalse = "The sky is blue."
    case multipleChoice = "Who is the ugliest Beatle: John, Paul, George, or Ringo?"
    case shortAnswer = "What is the capital of Oregon?"
    case essay = "In 50 words, explain molceular fusion."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String {
    case trueFalse = "True."
    case multipleChoice = "Sgt. Pepper."
    case shortAnswer = "Salem"
    case essay = "Molecular fusion happens when a daddy molecule and a mommy molecule love each other veryyyyyy much."
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

class Answer {}

protocol AnswerGenerator: QuestionGenerator {
    func generateRandomAnswer() -> Answer
}

//class Jeopardy: AnswerGenerator {
//    func generateRandomAnswer() -> Answer {
//        let randomNumber = Int(arc4random_uniform(4))
//        let randomType = QuestionType.types[randomNumber]
//        return AnswerType.types[randomNumber]
//    }
//    func generateRandomQuestion() -> Question {
//        let randomNumber = Int(arc4random_uniform(4))
//        let randomType = QuestionType.types[randomNumber]
//        randomQuery
//        return
//    }
//}

class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        return randomQuestion
    }
}

let quiz = Quiz()

let question = quiz.generateRandomQuestion()

print("QUESTION TYPE: \(question.type) \n QUERY: \(question.query) \n ANSWER: \(question.answer)")
//===========================================================================================================

//===========================================================================================================

//===========================================================================================================

//===========================================================================================================

//===========================================================================================================

//===========================================================================================================

//===========================================================================================================

//===========================================================================================================





































