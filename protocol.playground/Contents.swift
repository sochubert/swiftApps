import UIKit

// 서비스를 해야할 때, 해야 할 일들의 목록이다

// CustomStringConvertable

struct Lecture: CustomStringConvertable {
    var description: String {
        return "Title: \(name), Instructor: \(instructor)"
    }
    
    let name: String
    let instructor: String
    let numOfStudent: Int
}

func printLectureName(from instructor: String, lectures: [Lecture]) {
    var lectureName = ""
    
    for lecture in lectures {
        if instructor == lecture.instructor {
            lectureName = lecture.name
        }
    }
    
    print("그 강사님 강의는 \(lectureName)입니다")
}


let lec1 = Lecture(name: "iOS Basic", instructor: "Jason", numOfStudent: 6)

let lec2 = Lecture(name: "iOS Advanced", instructor: "Jack", numOfStudent: 10)

let lec3 = Lecture(name: "iOS Pro", instructor: "Kay", numOfStudent: 20)

let lectures = [lec1, lec2, lec3]

printLectureName(from: "Jack", lectures: lectures)

print(lec1)
