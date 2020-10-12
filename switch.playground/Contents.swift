import UIKit

let score = 10

switch score {
case 10:
    print("you are not jedi")
    fallthrough
case 10...100, ..<150:
    print("you are jedi")
default:
    print("you are not jedi")
}

let name = "Alex"
name.contains("Al")

switch name {
case "Alex":
    print("Hello, \(name)")
default:
    print("Who are you?")
}
