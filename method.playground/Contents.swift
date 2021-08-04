import UIKit

struct Lecture {
    var title: String
    var maxStudents: Int = 10
    var numOfRegisterd: Int = 0
    
    func remainSeats() -> Int {
        let remainSeats = lec.maxStudents - lec.numOfRegisterd
        return remainSeats
    }
    
    mutating func register() {
        // 등록된 학생수 증가시키기
        numOfRegisterd += 1
    }
    
    static let target: String = "Anybody want to learn something"
    static func 소속학원이름() -> String {
        return "FastCampus"
    }
}

var lec = Lecture(title: "iOS Basic")

lec.remainSeats()

lec.register()
lec.register()
lec.register()
lec.register()
lec.register()
lec.register()
lec.register()
lec.remainSeats()
Lecture.target
Lecture.소속학원이름()


struct Math {
    static func abs(value: Int) -> Int {
        if value > 0 {
            return value
        } else {
            return -value
        }
    }
}

Math.abs(value: -20)

extension Math {
    static func square(value: Int) -> Int {
        return value * value
    }
    static func half(value: Int) -> Int {
        return value/2
    }
}
Math.square(value: 5)
Math.half(value: 20)

var value: Int = 3
// 제곱, 반값

extension Int { // 이것을 이용하면 애플이 만든 것들을 내가 원하는대로 사용 가능하다!
    func squre() -> Int {
        return self * self
    }
    func half() -> Int {
        return self / 2
    }
}

value.square()
value.half()
