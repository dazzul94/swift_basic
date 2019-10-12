import UIKit

// 구조체와 클래스 16장

//          구조체     열거형            클래스
// 형식     값타입     값타입(복사간편)  참조타입(주소값,복사불편,동적확장)
// 상속     불가       불가              상속가능
// 익스텐션 가능       가능              가능

// 스위프트는 구조체 선호 이유? 복사가 간편하기 때문에

struct Student {
    var name:String = "김다솔 "
    var age:Int = 26
    func printMyName() {
        print(self.name)
    }
}

// 구조체의 객체 할당(인스턴스): 메모리에 할당
var structStudent: Student = Student() // new 없음
dump(structStudent)
structStudent.name = "홍길동"
structStudent.printMyName()

let structStudent2 = structStudent
dump((structStudent2))

// 클래스
class Person {
    var name: String = "아이언맨"
    var age: Int =  50
    func printMyName() {
        print(self.name)
    }
}

// 클래스의 객체생성
var classPerson = Person()  // new 없음
classPerson.name = "스파이더맨"
classPerson.printMyName()

// 클래스의 생성자
//init함수 - 이니셜라이즈
class SchoolMan {
    var name:String
    var age:Int
    // 선택적 초기화(옵셔널 변수)
    var nickName: String?   // 만약 옵셔널로 안주면 init함수에서 꼭 초기화 하라고 오류난다.
    
    // 생성자
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    //  소멸자 - 객체(클래스, 구조체, 열거형)이 사라질 때 nil될 때 자동호출됨.
    deinit {
        self.name = ""
        self.age = 0
        print("소멸자 호출됨.")
    }
}

var schoolMan = SchoolMan(name: "스쿨맨", age: 20)
print(schoolMan.name)
print(schoolMan.age)

schoolMan.nickName = "개그맨"
// 옵셔널 바인딩
if let nick = schoolMan.nickName {
    print(nick)
}

var schoolMan2: SchoolMan? = SchoolMan.init(name: "고등어", age: 15)
schoolMan2 = nil    // nil이 되는 순간 소멸자 호출된다.

// 클래스의 상속: 부모클래스의 자산(변수,함수)를 자식클래스에게 넘겨줌.
class Parent {
    var name:String = "아버지"
    var age:Int = 40
    func printMyName() {
        print(self.name)
    }
}
// 콜론 연산자를 이용하여, 상속함.
class Child:Parent {
    
}

var child = Child()
print(child.age)
print(child.name)
child.printMyName()

// 클래스(구조체, 열거형)의 속성 Property - get, set 함수
struct People {
    var name:String = "홍길동"
    var korAge:Int = 26
    var engAge:Int {
        get {   // 변수를 읽을 때 자동으로 호출됨.
            return self.korAge - 1
        }
        set(inputValue) {   // 값을 대입(=)할때 자동으로 호출됨.
            korAge = inputValue + 1
        }
    }
}

var people:People = People()
print(people.engAge)    // get함수가 자동으로 호출됨

people.engAge = 45  // set함수가 자동으로 호출됨
print(people.engAge)
print(people.korAge)

// 속성 감시자
struct Hero {
    var name:String = "아이언맨"
    var age:Int = 30 {
        // 감시자 함수가 있다.
        willSet(newAge) {
            // 값이 세팅되기 전 (선처리)
            print("이전 나이: \(age), 새 나이: \(newAge)")
        }
        didSet(oldAge) {
            // 값이 세팅되고 난 후 (후처리)
            print("이전 나이: \(oldAge), 새 나이: \(age)")
        }
    }
}

var hero:Hero = Hero()
hero.age = 40
