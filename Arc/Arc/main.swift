//
//  main.swift
//  Arc
//
//  Created by User on 13.11.2020.
//  Copyright © 2020 User. All rights reserved.
//

import Foundation

class Person {
    var dog: Dog?
    
    init() {
        self.dog = Dog()
    }
    
    deinit {
        print("Person is free")
    }
}

class Dog {
    weak var person: Person?
    
    deinit {
        print("Dog is free")
    }
}

let firstScope = true
let secondScope = true

if firstScope {
    let person = Person()
    let dog = Dog()

    if secondScope {
        person.dog = dog
        dog.person = person
        
        print("Second scope has ended")
    }
    
    print("First scope has ended")
}

print("finish")
