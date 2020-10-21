import UIKit

class Furniture {
    var material: String
    
    init(material: String) {
        self.material = material
    }
}

class Bed: Furniture {
    var numberOfPlaces: Int
    
    init(numberOfPlaces: Int, material: String) {
        self.numberOfPlaces = numberOfPlaces
        super.init(material: material)
    }
}

class Cupboard: Furniture {
    var shelves: Int
    
    init(shelves: Int, material: String) {
        self.shelves = shelves
        super.init(material: material)
    }
}

var furnitureList = [Furniture]()

furnitureList.append(Bed(numberOfPlaces: 2, material: "Wood"))
furnitureList.append(Bed(numberOfPlaces: 1, material: "Steel"))
furnitureList.append(Bed(numberOfPlaces: 2, material: "Plastic"))

furnitureList.append(Cupboard(shelves: 4, material: "Wood"))
furnitureList.append(Cupboard(shelves: 2, material: "Steel"))

var bed = 0
var cupboard = 0

//for item in furnitureList {
//    if item is Bed {
//        bed += 1
//    } else if item is Cupboard {
//        cupboard += 1
//    }
//}

for item in furnitureList {
    if let bedItem = item as? Bed {
        bed += 1
    }
}

bed
cupboard
