import UIKit

for i in 1...25 {
    print(i)
}

let arr = [1, 22, 11, 15]

for i in arr {
    print("Arr elem \(i)")
}

let str = "absdfsdf"

for char in str {
    print(char)
}

let fingers = ["Ivan": 20, "Svetlana": 18, "Pavel": 11]

for (name, count) in fingers {
    print("\(name) have \(count) fingers")
}

for (index, val) in arr.enumerated() {
    print("\(val) at index \(index)")
}

let names = ["Jordan", "Alexa", "Siri", "Alice"]
for name in names where name.hasPrefix("A") {
print(name) }
