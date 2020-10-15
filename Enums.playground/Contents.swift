import UIKit

enum Movement: String {
    case forward
    case backward
    case left
    case right
}

let movement1 = Movement.forward
let movement2: Movement = .backward
let movement3 = Movement.right.rawValue

enum ControlPonts: Int {
    case firstPoint
    case secondPoint
}

print(ControlPonts.firstPoint.rawValue)

enum Device {
    case iPad(size: String), iPhone, SamsungGalaxy
    
    var year: Int {
        switch self {
        case .iPad(let size) where size == "mini":
            return 2018
        case .iPad:
            return 2007
        case .iPhone:
            return 2012
        case .SamsungGalaxy:
            return 2019
        }
    }
}

let yarOfProduction = Device.iPad(size: "mini").year

enum Character {
    enum Wearpon: Int {
        case sword = 4
        case wand = 1
        
        var damage: Int {
            return rawValue * 10
        }
    }
    
    enum CharacterType {
        case knight
        case mage
    }
}

let charWeapon = Character.Wearpon.sword.damage

indirect enum Lunch {
    case salad
    case soup
    case meal(Lunch, Lunch)
}

let myLunch = Lunch.meal(.salad, .soup)
