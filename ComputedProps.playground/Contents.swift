import UIKit

class Rect {
    let width: Int
    let height: Int
    let depth: Int
    
    var volume: Int {
        return width * height * depth
    }
    
    init(width: Int, height: Int, depth: Int) {
        self.width = width
        self.height = height
        self.depth = depth
    }
}

let rect = Rect(width: 10, height: 10, depth: 13)

print("Volume: \(rect.volume)")

class Person {
    var name: String
    var secondName: String
    
    var fullName: String {
        get {
            return name + " " + secondName
        }
        
        set {
            let array = newValue.components(separatedBy: " ")
            name = array[0]
            secondName = array[1]
        }
    }
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
}

let person = Person(name: "Alex", secondName: "Golovanov")
print(person.fullName)

person.fullName = "Zinaida Petrove"
person.name
person.secondName
