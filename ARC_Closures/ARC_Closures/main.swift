//
//  main.swift
//  ARC_Closures
//
//  Created by User on 13.11.2020.
//  Copyright © 2020 User. All rights reserved.
//

import Foundation

var x = "A"

let closure: () -> () = {
    print(x)
}

closure() // Prints A

x = "B"

closure() // Prints B

// do not capture x variable
let closure2 = { [x] () -> () in
    print(x)
}

closure2()

x = "C"

closure2()

// ----------
var firstScope = true

class Person {
    var dog: Dog?
    
    var printer: (() -> ())?
    
    lazy var lazyFunc: () -> () = { [unowned self] in
        print(self.dog!)
    }
    
    deinit {
        print("Persion is free")
    }
}

class Dog {
    unowned var person: Person?
    var name: String
    
    init(_ name: String) {
        self.name = name
    }

    deinit {
        print("Dog \(name) is free")
    }
}

var useDog: () -> ()

if firstScope {
    print("Scope start")
    
    let person = Person()
    person.dog = Dog("Buddy")
    
    person.lazyFunc()
    
    let personsDog = person.dog
    
    // 1 type) possible strong ref loop
    useDog = { [unowned personsDog] in
        print(personsDog!.name)
    }
    
    // 2 type) possible strong ref loop
    person.printer = { [unowned person] in
        print(person)
    }
    
    print("Scope end")
}

print("END OF STORY")

var freeDog1 = Dog("Bob")

useDog = {
    print("dog name is: \(freeDog1.name)")
}

useDog()

freeDog1.name = "Tim"

useDog()
