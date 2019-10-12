import UIKit

// 클로저 12장 201쪽
// 클로저의 변형(유연성)

// 일반함수: 클로저변수를 매개변수로 받음
func calc(a:Int, b:Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}

// reuslt1, result2 차이점

// 클로저 본체를 넣어줬음
var result1 = calc(a:10, b:20, method: {
    (a:Int, b:Int) -> Int in
    return a + b
})

// 반환형 생략 가능
var result1_1 = calc(a: 10, b: 20, method: {
    (a:Int, b:Int) /* -> Int*/  in
    return a + b // 리턴구문에 Int형으로 타입 추정이 가능하기 때문
})

// 더 생략 가능(클로저의 매개변수 생략)
var result1_2 = calc(a: 10, b: 20, method: {
    return $0 + $1 // $0는 첫번째 매개변수, $1은 두번째 매개변수, 반환형은 타입 추정됨.
})

var result1_3 = calc(a:10, b:20, method: {
    $0 + $1
})

// 후행 클로저(Trailing Closere) - 꽤 많이 씀.
// 함수를 닫아버리고 뒤에 따로 클로저를 선언한다.
var result2 = calc(a:10, b:20)   // 매개변수가 세개인데 2개만 적고 닫아버림
{
    (a:Int, b:Int) -> Int in
    return a + b
}

// 후행 클로저에서도 반환형 생략 가능
var result2_1 = calc(a:10, b:20)   // 매개변수가 세개인데 2개만 적고 닫아버림
{
    (a:Int, b:Int) /*-> Int*/ in
    return a + b
}0

// 후행 클로저 매개변수 생략
var result2_2 = calc(a:10, b:20) {
    return $0 + $1
}

// return 키워드까지도 생략가능(맨끝 문장을 리턴문으로 생각한다.)
var result2_3 = calc(a:10, b:20) {
    $0 + $1
}



