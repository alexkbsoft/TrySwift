import UIKit

var fuel: Int?
fuel = 20
//fuel = nil

// print("\(fuel!) liters left")

if let availableFuel = fuel {
    print("\(availableFuel) liters left")
} else {
    print("no fueel data available")
}

func checkFuel() {
    guard let availableFuel = fuel else {
        print("No fuel data available")
        
        return
    }
    
    return print("\(availableFuel) liters left")
}

checkFuel()
