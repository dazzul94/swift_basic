import UIKit

// ex20  프로토콜(Protocol): 자바의 인터페이스와 유사 - 추상화클래스
// 24장

// 일반클래스와           프로토콜(인터페이스)의 차이점
// 다중상속안됨.          다중상속이 됨.

// 프로토콜은 가상함수만 있음(선언만 있고, 본체가 없는 함수)
// 프로토콜은 기능 목록만 기술할 뿐, 실제 기능은 없음(설계)
// 구현클래스는 프로토콜에 기술된 실제기능을 구현한다.(구현)

// 설계와 구현의 관점에서 보면 된다.
// 집을 지을 때 설계사무소가 청사진을 그리고
// 시공사가 실제 집을 짓는다.
// 설계와 구현을 분리해서 하면 속도가 빠르다.


// 프로토콜 설계
protocol Talkable {
    var lang: String { get }    // 읽기만 가능
    var topic: String {get set}     // 읽기 쓰기 가능
    func talk()
}

protocol Runnable {
    func run()  // 선언부만 있음
}

// 구현 struct
struct Person: Talkable, Runnable {     // 다중 상속이 가능
    var lang: String // 프로퍼티 요구 준수
    var topic: String // 프로퍼티 요구 준수
    func talk() {
        print("말할 수 있음.")
    }
    func run() {
        print("뛸 수 있음.")
    }
    init(lang: String, topic: String) {
        self.lang = lang
        self.topic = topic
    }
}

// 메소드 오버로딩(Overloading)은 함수를 매개변수를 다르게 해서 *확장*하는 것.
// 오버라이딩(Overriding)은 상속받은 자식클래스에서 부모 메소드를 *재정의* 하는것.

// 메소드 오버라이딩
class ParentClass {
    func printMyName(name: String) {
        print(name)
    }
    func printMyName(name: String, age: Int) {
        print("\(name), \(age)")
    }
}

class ChildClass: ParentClass {
    override func printMyName(name: String) {
        print("제 이름은 \(name)입니다.")
    }
}
var child = ChildClass()
child.printMyName(name: "김다솔")
child.printMyName(name: "홍길동",  age: 40)


