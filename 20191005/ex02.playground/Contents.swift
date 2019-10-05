import UIKit

// 3장 변수와 상수 47페이지
// 변수: Variable - 메모리공간(4byte)
// 상수: Constant - 메모리공간이되어 값이 한번 설정되면 변경불가
// Swift에서 변수 var 예약어(keyword)를 사용..
//           상수 let 사용함

// 변수의 선언 -> 한번 타입이 지정되면 나중에 바꾸지 못한다.
// var 변수이름: 타입(자료형)

var myStr: String = "스위프트"

// 타입은 생략가능 - 타입 추정에 의해서 결정된다.
var myStr2 = "ios 앱" // 문자열 타입으로 추정되어 지정됨.

// 변수의 이름은 개발자가 지정하되 룰이 있음.
// Camel Text - 단어의 첫글자만 대문자로 지정함.
// ex) myNameLength <=> mynamelength
// 맨 첫글자를 소문자로 하는 경우: 변수, 상수, 함수이름 ex) myNameLength
// 맨 첫글자를 대문자로 하는 경우: 클래스, 구조체, 열거형, 익스텐션 ex) MyNameLength

// 가독성!!! = 개발의 80%의 시간은 Reading
//                    20%의 시간은 Typing

// 코드의 이름을 지을 때 영문법의 어순을 따른다.
// 주어 동사 목적어: 영어
// ex) I go to a school today => gotoSchoolToday
// 주어 목적어 동사: 한국말
// ex) I today school goto => todaySchoolGoto

// 1. 변수를 선언할 때 (초기값)을 함께 준다.
var myInt: Int = 10 // 메모리 공간에 저장됨.

// 2. 변수를 선언할 때 (초기값)을 함께 준다.
var myFloat: Float
myFloat = 3.14

// 3. 변수를 여러개 설정할 때
var myInt1, myInt2, myInt3 : Int
myInt1 = 10
myInt2 = 20
myInt3 = 30

// 상수
// let 상수이름: 타입(자료형)
let myName: String = "홍길동"
// myName = "변사또" // 상수는 값이 한번 지정되고 나면 값을 변경할 수 없음.
// 상수를 사용하는 이유: 고정된 값을 보장하기 위해
// 원주율: PI =. 3.141592 -> 변경이 안됨.
// 중력가속도: G = 9.8m/s^2

