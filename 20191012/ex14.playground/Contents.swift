import UIKit

// 클로저 12장 201쪽
// Closer : 자바의 람다식과 유사함. 익명함수와 유사함.
// 코드 뭉치(함수)를 변수로 만들어서, 매개변수로 전달이 가능한다.
// 변수로 만들어진 코드뭉치를 실행할 수 있다.
// 함수형 언어의 장점 - 비동기 처리가 가능하다.

// 클로저를 만드는 방법
// { (매개변수 목록) -> 반환형 in
// 실행문들...
// }


        // 타입: 클로저 타입
// 변수로 만들었다.
var sum: (Int, Int) -> Int =
{
    (a:Int, b:Int) -> Int in
    return a + b
}


// 실행해보자
print(sum(10, 20))

var sub: (Int, Int) -> Int = {
    (a:Int, b:Int) -> Int in
    return a - b
}

// 실행해보자
print(sub(10, 20))

// (Int, Int) -> Int 자체가 타입이라고 생각한다.
func calc(a:Int, b:Int, method:(Int, Int) -> Int) -> Int {
    return method(a, b)    //클로저변수를 실행함.
}
var result = calc(a: 10, b: 20, method: sum)
var result2 = calc(a: 10, b: 20, method: sub)

print(result)
print(result2)

// 함수에 클러저 본체를 바로 선언해서 사용할 수 있다. 1회성. 추천하지 않음
var result3 = calc(a: 10, b: 20, method: {
    (a:Int, b:Int) -> Int in
    return a * b
})

// 클로저 사용예 2
// 일반 함수
func printMyName(name1: String, name2: String) {
    print("name1: \(name1), name2:\(name2)")
}
printMyName(name1: "hong", name2: "tom")

var myFunc: (String, String) -> Void = {
    (name1: String, name2: String) -> Void in
    print("name1: \(name1), name2:\(name2)")
}

myFunc("kim","dasol")

// 일반함수를 클로저변수로 선언한다.
var myFunc2: (String, String) -> Void =
    printMyName(name1:name2:)
myFunc2("aa","ll")

// 클로저변수를 매개변수로 전달한다.
func runMyfunc(myFunc:(String, String)-> Void) {
    myFunc("태연", "윤아")
}
runMyfunc(myFunc: myFunc2)
