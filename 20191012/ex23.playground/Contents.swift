import UIKit

// 제네릭(Generics) 26장
// 타입을 여러 형태로 입력해 주기 위해서 사용함.
// 함수, 구조체, 클래스, 열거형에 사용 가능함.

struct Calc<TYPE> {
    var myParam: TYPE
    init(param: TYPE) {
        self.myParam = param
    }
}

var myCalc = Calc<Int>(param: 10)
var myCalc2 = Calc<String>(param:"파라미터")
