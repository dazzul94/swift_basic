import UIKit

// 생소한 스위프트의 문법
// 스위프트의 객체 타입
// Any, AnyObject, nil

// Any 타입: 모든 데이터 타입을 쓸 수 있음.
//           Int, Float, String
//           Class, Struct, Enum, Array(콜렉션)
// ***********스위프트의 기본 자료형은 구조체이다.(Int, Float, String, Bool). Primitive가 아님.
var myAny: Any = 100 // 정수 타입 데이터
myAny = "홍길동"     // 문자열 타입 데이터
myAny = true

// AnyObject 타입: 모든 클래스 객체를 담는다.
class MyClass {
    var name = "김다솔"
}
class MyClass2 {
    var age = 26
}

var myAnyObject: AnyObject = MyClass()
myAnyObject = MyClass2()

// nil 타입: null(NULL)과 같음. 비어있는 객체(레퍼런스-참조) 변수임. 주소값이 nil임
// 레퍼런스 변수 = 참조 변수
var myNil : Int? = nil
// 그냥 Int로 선언하면 에러, nil이 될 수도 있는 변수는 옵셔널 변수로 지정해줘야 한다!!




