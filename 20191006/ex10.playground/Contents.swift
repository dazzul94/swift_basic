import UIKit

// 값 타입과 참조 타입
// value type 과 reference type
// value type: 변수(메모리공간) 안에 실제 데이터가 저장되어 있음. 값 복사 간편.
// reference type: 실제 데이터가 들어있는 메모리공간의 주소값을 저장함. 값 복사시 주소값을 전달함.

// swift에서는
// 값 타입: 구조체, 기본자료형(Int, Float, String, Bool)이 ***구조체***
//          열거형(Enum)도 값 타입, 딕셔너리(Dictionary), 배열(Array), 집합(Set)
// 참조 타입: 클래스, NS류의 자료형들(레거시 Objective C): NSString, NSArray, NSNumber
// NS = next step

// 스위프트는 값 타입을 선호함.

// 구조체를 쓰는 것이 편하다.

// 구조체(Struct): 변수와 함수 들어감, 값 타입, 익스텐션(기능확장), 값 전달이 간편
// 클래스(Class): 변수와 함수 들어감, 참조 타입, 상속 가능(Override), 익스텐션(기능확장), 값 전달이 불편.
// 열거형(Enum): 변수와 함수 들어감, 값 타입, 익스텐션(기능확장)


// 값 타입(Struct)와 레퍼런스 타입(Class)의 차이
struct MyStruct {
    var age = 30
}
class MyClass {
    var age = 30
}
let myStruct = MyStruct()   // new 없어짐.
var myStruct2 = myStruct    // 복사: 값도 함께 복사.
myStruct2.age = 33
print(myStruct.age) // 다른 메모리 공간에 있기 때문에 myStruct의 age값은 그대로 30

let myClass = MyClass()   // new 없어짐.
var myClass2 = myClass
myClass2.age = 33
print(myClass.age)  // a라는 방이 하나 만들어졌고 그 주소를 공유한다. 그 방안의 age가 바뀌므로 33으로 바뀐 값이 출력된다.

