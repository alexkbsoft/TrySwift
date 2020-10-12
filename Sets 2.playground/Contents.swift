import UIKit

var str = "Hello, playground"

let set1 = Set<String>()
let set2: Set<String> = []
var set3: Set = [1, 2, 3, 4]

set3.insert(5)
set3.insert(6)
set3.isEmpty
set3.count
set3.remove(22)

let boolVal = set3.contains(6)

let setFrom1: Set = [1 ,3, 4]
let setFrom2: Set = [6 ,7, 8, 1, 3]

let commonVals = setFrom1.union(setFrom2)
commonVals

let intersectSet = setFrom1.intersection(setFrom2)
setFrom1.symmetricDifference(setFrom2)
setFrom2.symmetricDifference(setFrom1)
setFrom2.subtracting(setFrom1)
setFrom2
