import UIKit

class Human {
    var name: String
    
    func tellAboutMe() -> String {
        return "My name is \(name)"
    }
    
    init(name: String) {
        self.name = name
    }
}

class Child: Human {
    var toy = "horse"
    
    override func tellAboutMe() -> String {
        let originalText = super.tellAboutMe()
        
        return originalText + " and i have a toy \(toy)"
    }
    
    init(name: String, toy: String) {
        self.toy = toy
        super.init(name: name)
    }
    
    override init(name: String) {
        self.toy = "Hummer"
        super.init(name: name)
    }
}

let child1 = Child(name: "Vova")
child1.tellAboutMe()

let child2 = Child(name: "Mary", toy: "Doll")
child2.tellAboutMe()
