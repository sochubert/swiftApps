import UIKit

struct Person {
    var firstName: String {
        willSet {
            print("willSet: \(firstName) --> \(newValue)")
        }
        didSet {
            print("didSet: \(oldValue) --> \(firstName)")
        }
    }
    var lastName: String
    
    lazy var isPopular: Bool = {
        if fullName == "Jay Park" {
            return true
        } else {
            return false
        }
    }()
    
//    var fullName: String { // 저장하지 않고 재가공해서 쓰는 것
//        get {
//            return "\(firstName) \(lastName)"
//    }
//        set {
//            if let firstName = newValue.components(separatedBy: " ").first {
//                self.firstName = firstName
//            }
//            if let lastName = newValue.components(separatedBy: " ").last {
//                self.lastName = lastName
//            }
//        }
//    }
//}

    var fullName: String { // 저장하지 않고 재가공해서 쓰는 것
        return "\(firstName) \(lastName)"
    }
    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}
    
var person = Person(firstName: "Jason", lastName: "Lee")

//person.firstName
//person.lastName
//
//person.firstName = "Jim"
//person.lastName = "Kim"
//
//person.firstName
//person.lastName
//
//person.fullName
//person.fullName = "Jay Park"
//person.firstName
//person.lastName
//
//person.isPopular

person.fullName
