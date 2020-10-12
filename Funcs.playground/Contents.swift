import UIKit

func sayHello() -> Void {
    print("Hello")
}

sayHello()

func oneParam(param: Int) {
    var param = param
    param += 1
}

oneParam(param: 11)

func returnVal() -> Int {
    return 1
}

print("Result: \(returnVal())")

func setName(name: String, secondName: String) -> String {
    return "Your name is \(name) \(secondName)"
}

func calcMoney(array: [Int]) -> Int {
    var sum = 0
    func sayMoney() {
        print(sum)
    }
    
    for item in array {
        sum += item
    }
    
    sayMoney()
    return array.count
}

calcMoney(array: [22, 33])

func findSum(_ integers: Int...) -> Int {
    var sum = 0
    
    for item in integers {
        sum += item
    }
    
    return sum
}

findSum(1, 2, 3, 5)

func whatToDo(missed: Bool) -> (Int) -> Int {
    func missCountUp(input: Int) -> Int { return input + 1 }
    func missCountDown(input: Int) -> Int { return input - 1 }
    
    return missed ? missCountUp : missCountDown;
}

var missedCount = 0
print( whatToDo(missed: true)(missedCount) )
