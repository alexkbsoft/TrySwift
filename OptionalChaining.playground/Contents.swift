import UIKit

class Worker {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func work() {
        print("Worker \(name) doing some work")
    }
}

class Salary {
    let salary: Int
    
    init(_ salary: Int) {
        self.salary = salary
    }
    
    func showSalary() {
        print("\(salary)")
    }
}

class Job {
    let salary: Salary?
    
    init(salary: Salary) {
        self.salary = salary
    }
}

class Company {
    let name: String
    var job: Job?
    var workers: [Worker]? = []
    
    init(name: String, job: Job) {
        self.name = name
        self.job = job
    }
}

let company = Company(name: "Zarplata",
                      job: Job(salary: Salary(150000)))

let salary = company.job?.salary?.salary

company.workers?.append(Worker(name: "Alex"))

company.workers
