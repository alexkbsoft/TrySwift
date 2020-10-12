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
