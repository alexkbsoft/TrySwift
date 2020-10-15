import UIKit

class Car {
    var petsWeight: Int
    var productsWeight: Int
    var peopleWeight: Int
    
    class var selfWeight: Int { return 1500 }
    class var maxWeight: Int { return 2500 }
    
    var totalWeight: Int {
        return petsWeight + productsWeight + peopleWeight + Car.selfWeight
    }
    
    init(petsWeight: Int, productsWeight: Int, peopleWeight: Int) {
        self.petsWeight = petsWeight
        self.productsWeight = productsWeight
        self .peopleWeight = peopleWeight
    }
}

let car = Car(petsWeight: 10, productsWeight: 500, peopleWeight: 600)
print("Car weight: \(car.totalWeight)")

if (car.totalWeight > Car.maxWeight) {
    print("You cant drive... overloaded")
} else {
    print("ready to drive")
}

