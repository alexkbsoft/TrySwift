import UIKit

let field1: String? = "Alex"
let field2: String? = "233443"
let field3: String? = "Bakers street 76"

func someFunc(a: Int, b: Int) {
    guard let user = field1 else {
        return
    }
    guard let phone = field2 else {
        return
    }
    guard let address = field3 else {
        return
    }
    
    print("Connecting for user \(user), full address: \(phone); \(address)")
    
}

someFunc(a: 1, b: 2)
