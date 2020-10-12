import UIKit

let a = 3
let b = 1

if a == b {
    print("a equals b")
} else if a < b {
    print("b exeeds a by \(b-a)")
} else if b < a {
    print("a exeeds b by \(a-b)")
} else {
    print("else")
}

let isSunny = true

if isSunny {
    print("I will go for a walk")
}

let action = isSunny ? "I will go for a walk" : "I will stay at home"
action

if 1...4 ~= b {
    print("b is between 1 and 4")
}

let c = 5

if c == 2 && a == 10 || c == 5 {
    print("Hello programmer")
}
