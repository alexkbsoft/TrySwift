import UIKit

class SecretLabEmployee {
    var accessLevel = 0 {
        willSet {
            print("new boss is about to come")
            print("new access level is \(newValue)")
        }
        
        didSet {
            dbAccess = accessLevel > 0
            print("new boss just come. last time access level \(oldValue)")
        }
    }
    var dbAccess = false
}

var employee = SecretLabEmployee()
employee.accessLevel
employee.dbAccess

employee.accessLevel = 1
employee.accessLevel
employee.dbAccess
