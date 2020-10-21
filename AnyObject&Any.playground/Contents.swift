import UIKit

class A {}
class B {}
class C {}

struct D {}

enum F {
    case a
    case b
}

let a = A()
let b = B()
let c = C()
let a1 = A()

let d = D()

let i = F.a

//let arrObj: [AnyObject] = [a, b, c, a1, 22, "True", d] // Error

let arrAny: [Any] = [a, b, c, d, i, 22, "True"]

for item in arrAny {
    switch item {
    case let i as Int:
        print("Int: ", i)
    case let i as String:
        print("String: ", i)
    case let i as A:
        print("A: ", i)
    default:
        "Some strange thing"
    }
}
