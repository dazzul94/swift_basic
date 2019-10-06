import UIKit

// 함수 11장 181쪽

// 절차형 언어: C언어, 포트란, 코볼, 베이직, PHP
// 객체지향(클래스) 언어: 자바, C#
// 함수형 언어: 블럭코딩(함수단위로 코드뭉치를 전달/호출): 자바스크립트, 스위프트, 코틀린, 파이썬

// 함수
// func 함수이름( 매개변수이름1: 타입1, 매개변수이름2: 타입2, ...) -> 반환형(타입) {
//
// }

func MyFunc() {
    print("MyFunc")
}
MyFunc()

// 함수의 4가지 패턴
// 매개변수가 없고, 반환형이 없을 때(Void는 생략이 가능)
// 함수를 쓰는 이유: 1. 코드를 기능단위로 분리하고, 2. 코드뭉치에 이름을 붙인다.

func MyFunc1() -> Void {
    print("MyFunc1 호출됨")
}
// 매개변수가 있고, 반환형이 없을 때
func MyFunc2(name: String) -> Void {
    print("MyFunc2 호출됨")
}
// 매개변수가 없고, 반환형이 있을 때
func MyFunc3() -> Int {
    print("MyFunc3 호출됨")
    return 10
}
// 매개변수가 있고, 반환형이 있을 때
func MyFunc4(name: String) -> Int {
    print("MyFunc4 호출됨")
    return 20
}

MyFunc1()
MyFunc2(name: "홍길동")    // 매개변수명을 같이 적어준다.
MyFunc3()
MyFunc4(name: "홍길동")    // 매개변수명을 같이 적어준다.

// 함수의 고급 문법
func printMyName (name1: String, name2: String) {
    print("name1: \(name1), name2: \(name2)")
}
printMyName(name1: "홍길동", name2: "변사또" )

// 매개변수의 기본값
func printMyName2 (name1: String, name2: String = "춘향이") {
    print("name1: \(name1), name2: \(name2)")
}
printMyName2(name1: "홍길동")
printMyName2(name1: "홍길동", name2: "변사또")    // 기본값에 덮어씀

// 매개변수에 레이블(별명)을 지정
func printMyName3(hero name1:String, actor name2:String) {
    print("name1: \(name1), name2: \(name2)")
}
printMyName3(hero: "tom", actor: "john")

// 매개변수의 이름을 생략 가능(호출할때만 생략, 함수내부에서는 사용해아한다.)
func printMyName4(_ name1:String, _ name2:String) {
    print("name1: \(name1), name2: \(name2)")
}
printMyName4("김다솔", "이보미")
 
// 가변 매개변수 - 매개변수타입 뒤에 ...
// name2가 문자열 배열임.
func printMyName5(name1: String, name2: String...) {
    print("name1: \(name1), name2: \(name2)")
    for name in name2 {
        print(name)
    }
}
printMyName5(name1: "홍길동", name2: "변사또", "춘향이", "이보미", "김다솔")   // 콤마로 이어서 써준다.
