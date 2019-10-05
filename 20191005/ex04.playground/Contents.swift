import UIKit

// 기본자료형 (타입)
// Bool, Int, UInt, Float, Double, Character, string

// Bool - 논리형 true, false만 있음.
//        C언어 스타일처럼 0,1 은 아님.
var myBool: Bool = true

// Int - 정수형 64bit OS에서는 64bit(8byte)
//              32bit OS에서는 32bit(4byte)
var myInt: Int = 10

// UInt - 정수형 마이너스(음수)값이 없이 0부터 시작하는 정수값을 표현함.
// UInt를 사용하는 이유: 1. 값이 음수가 없을 때 ex) 카운트(교실에 인원 셀 때)
//                       2. 값표현을 2배로 할 수 있다.
var myUInt : UInt = 20

// Float(4byte), Double(8byte) 실수값 근사값 공식
var myFloat: Float = 3.14
var myDouble: Double = 3.14

if myFloat == Float(myDouble) {
    print("두 수가 같습니다.")
} else {
    print("두 수가 다릅니다.")
}

// Character - 문자 하나 저장 (Unicode)
// 한글 가: 16진수 0xAC00
// 유니코드: 국제 문자 코드표
// 코드표: ASCII, EUC-KR(완성한글), Unicode
var myChar: Character = "가"

// String - 문자열 저장
var myString: String = "대한"
// 문자열 연결 연산자 +
myString = myString + "민국"
print( myString )

// 여러줄 문자열 연결 """
var multiString = """
여러줄의
문자열을
연결한다.
"""
print(multiString)
// \n은 개행문자(줄바꿈)이다.

