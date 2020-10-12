import UIKit

var timer = 5

print("Count down")

while timer > 0 {
    print(timer)
    timer -= 1
}

print(timer)

repeat {
    print(timer)
    timer += 1
} while timer < 5
