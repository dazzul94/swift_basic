import UIKit

// 연산자 Operator
// 산비논대: 산성비가 논에 온대
// 산술 연산자: + - * / %(나머지)
// 비교 연산자: ==(같은가) !=(같지않은가) > <. =(같거나 큰가) >=(크거나 같은가)
// 논리 연산자: &&(AND) ||(OR)
// 대입 연산자: =(오른쪽값을 왼쪽으로 대입) += -+ *= /=

// 산술 연산자: + - * / % (기호연산자)
//              결과는 값으로 나옴.
var myNum: Int = 10
print(myNum / 3)
print(myNum % 3)

// 비교 연산자: == != > < >= <=
//              결과는 true / false로 나옴.
// 논리 연산자: && ||
//              결과는 true / false로 나옴.

// 둘 다 true일때만 true, 나머지는 false
// &&(AND) 연산 true && true => true
//              true && false => false
//              false && true => false
//              false && false => false
// 둘중 하나만 true 일때도 true
// ||(OR) 연산 true || true => true
//             true || false => true
//             false || true => true
//             false || false => false
// ! (NOT) 연산. false => true
//               true => false

// ++, -- 연산자가 없어짐
var myInt:Int = 0
//myInt++
//myInt--
myInt += 1 //이렇게 사용함.
myInt -= 1

print("----------------------------")
// 연습문제
// 정수형 변수 23456가 있다.
// 나머지 연산자와 나누기 연산자를 이용하여
// 만의 자릿수, 천의 자릿수, 백의 자릿수, 십의 자릿수, 일의 자릿수를 출력하시오.

// 내꺼
var num: Int = 23456

var count:Int = 0
while true {
    print(num % 10)
    num = num / 10
    count += 1
    if count == 5 {
        break
    }
}
print("----------------------------")
// 선생님꺼
var number: Int = 23456
var num10000:Int = number / 10000 // 몫 2 나머지 3456
var num1000:Int = (number % 10000) / 1000
var num100:Int = (number % 1000) / 100
var num10:Int = (number % 100) / 10
var num1:Int = (number % 10)

// 물음표 연산자 ?: 삼항 연산자
var myBool:String = true ? "true": "false"

// ?? 쌍물음표 연산자: nil이면 대입되는 값 연산자
let name: String? = nil
print(name ?? "name이 nil이면 출력")

// 범위 연산자
// 시작값 ... 종료값으로 구성됨.
let range = 0...3
dump(range) // 0, 1, 2,3
let range2 = 0..<3
dump(range2) // 0, 1, 2

// 파이썬에서 가져옴. 인덱스 거꾸로
for index in range2 {
    print(index)
}
for index in range2.reversed() {
    print(index)
}











