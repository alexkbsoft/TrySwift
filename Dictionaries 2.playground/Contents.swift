import UIKit

var str = "Hello, playground"
let dict = Dictionary<String, String>()
let dict2 = [String: String]()
let dict3: [String: String] = [:]
var names = ["Ivan": 20,
             "Alex": 36]
names

names.count
names.isEmpty

names["Ivan"]
names["I"]
names["I"] = 22
names
let deletedVal = names.removeValue(forKey: "Ivan")
names
deletedVal
