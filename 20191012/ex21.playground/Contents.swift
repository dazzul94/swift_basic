import UIKit

// ex21
// 형변환(type casting)
let myInt: Int = 10
let myFloat: Float = 3.14
let myString:String = "123"

let myDouble = Double(myInt)
let myInt2 = Int(myFloat)   // 소수점이 짤린다.
let myString2 = String(myInt)

let myInt3 = Int(myString)  // nil이 될 수 있다.
if let myInt4 = Int("abc") {
    print(myInt4)
} else {
    print("nil임")
}

// 클래스의 형변환(다형성)
class Person {
    var name:String = ""
    func breath() {
        print("숨쉬기")
    }
}

class Student: Person {
    var school: String = ""
    func gotoSchool() {
        print("학교가기")
    }
}
class UnivStudent: Student {
    var major: String = ""
    func gotoMT() {
        print("엠티가기")
    }
}
var tom: Person = Person()
var hana: Student = Student()
var john: UnivStudent = UnivStudent()

// 다형성 - 상속관게에서 어떤 클래스의 속성을 가지고 있는지 확인해보자, 유전자 검사
var result: Bool = false
result = tom is Person
result = tom is Student
result = tom is UnivStudent
 
result = hana is Person
result = hana is Student
result = hana is UnivStudent

result = john is Person
result = john is Student
result = john is UnivStudent

switch tom {
case is Person:
    print("Person 속성이 있음.")
case is Student:
    print("Student 속성이 있음.")
case is UnivStudent:
    print("UnivStudent 속성이 있음.")
}
// is 연산자: 타입 확인 연산자
// as 연산자: 클래스 형번환 연산자

// 조건부 다운캐스팅(Down Casting) as? => nil일수도 있어서 물음표
var optionalCasted: Student?
optionalCasted = tom as? UnivStudent     // nil
optionalCasted = hana as? UnivStudent    // nil
optionalCasted = john as? UnivStudent    // ok

// ??연산자 : nil이면 디폴트값을 주는 연산자.
optionalCasted = tom as? UnivStudent ?? UnivStudent()


// 강제 다운캐스팅 as! : nil임을 각오하고 형변환
var forceCatsted: Student?
//forceCatsted = tom as! UnivStudent
