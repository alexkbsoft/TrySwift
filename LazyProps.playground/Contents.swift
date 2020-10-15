import UIKit

func processBigData() -> String {
    return "return long process result"
}

class Processing {
    let smallData = "Small data string"
    lazy var bigData = processBigData()
}

let bigDataProcess = Processing()
bigDataProcess.bigData
bigDataProcess
