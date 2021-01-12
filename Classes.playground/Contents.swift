import UIKit

class Human {
    var name: String
    var age: Int? = 30
    var hairs: Bool
    
    init() {
        name = "Alix"
        hairs = true
    }
    
    init(name: String, age: Int?, hairs: Bool) {
        self.name = name
        self.age = age
        self.hairs = hairs
    }
    
    func description() -> String {
        if let humanAge = age {
            return "Hello my name is \(name) and i am \(humanAge) years old!"
        } else {
            return "Hello. My name is \(name)"
        }
    }
}

let human1 = Human()
human1.description()

human1.name = "Anna"

print(human1.description())

let human2 = Human(name: "James", age: 22, hairs: true)
human2.hairs = false
human2.name = "Jack"
human2

var array = [Human]()
array.append(human1)
array.append(human2)

class Student {
    var name : String
    var surname : String
    var yearOfBorn : Int
    var mark : Double
    
    init(name: String, surname : String, yearOfBorn : Int, mark : Double) {
        self.name = name
        self.surname = surname
        self.yearOfBorn = yearOfBorn
        self.mark = mark
    }
    
    func printObject() -> () {
        print("Name: \(name)\nSurname: \(surname)\nYearOfBorn: \(yearOfBorn)\nMark: \(mark)\n-------")
    }
}

var student1 = Student(name: "Alex",
                       surname: "Golovanov",
                       yearOfBorn: 1983,
                       mark: 5)

//student1.printObject()

var student2 = Student(name: "Sergei",
                       surname: "Vashenko",
                       yearOfBorn: 1999,
                       mark: 6)

var student3 = Student(name: "Dmitri",
                       surname: "Archipod",
                       yearOfBorn: 2002,
                       mark: 7)

let group = [student1, student2, student3]

for oneStudent in group.sorted( by: { (s1, s2) -> Bool in s1.mark > s2.mark }) {
        oneStudent.printObject()
}
