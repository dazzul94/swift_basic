import UIKit

// 문자와 문자열 9장
// String 타입: 스위프트 구조체 타입
// NSString 타입: NS계열 클래스 타입

var myString: String = "hong"
// 다중 문자열
var multiString: String = """
다중
문자열
입니다
"""

// 문자열의 길이
var myName: String = "hong"
print(myName.count)

// 문자열의 비교
// 자바에서는 문자열 비교할 때 equals을 쓴다.
let str1: String = "Apple"
let str2: String = "Banana"
if str1 == str2 {
    print("같은 문자열")
} else {
    print("다른 문자열")
}

// 문자열의 연결: + 문자열 연결 연산자
print(str1 + str2)
print(str1.appending(str2))

// 문자열에서 특정 문자 하나를 가져올 때
let text = "abc"    // 타입 추정에 의해서 String
let index1 = text.index(text.startIndex, offsetBy: 0)
let index2 = text.index(text.startIndex, offsetBy: 1)
let char: Character = text[index1]
let char2: Character = text[index2]
