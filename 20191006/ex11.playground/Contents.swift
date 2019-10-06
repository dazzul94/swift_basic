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

let result = str1.compare(str2)
switch result {
case ComparisonResult.orderedSame:  // 점 찍는건 enum이어서. fullname은 ComparisonResult.orderedSame 임
    print("같음")
case .orderedAscending, .orderedDescending:
    print("값이 더 작음")
default:
    print("그 외")
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

for ch in text {
    print(ch)
}

var index3 = 0
for ch in text {
    if index3 == 1 {
        print("두 번째 값은 ", ch)
    }
    index3 += 1
}

let char3: Character = "A"
// let char4: Character = "AB" // 문자열이므로 에러
let char5 = Character("B")

// 문자열에 추가
var myName2: String = "hong"
// 문자를 하나 추가함
myName2.insert("!", at: myName2.endIndex)
// 문자열을 추가함
myName2.insert(contentsOf: "My", at: myName2.index(myName2.startIndex, offsetBy: 0))
let myName3 = "My" + myName2

// 형변환 NSString -> String
let myNSString: NSString = "john"
let myString2: String = String(myNSString)
let myString3: String = myNSString as String

// 문자열의 치환(바꾸기)
var myString4: String = "Swift Programming"
let resultString1 = myString4.replacingOccurrences(of: "Swift", with: "iOS")

// NSString(변경불가), NSMutableString(변경가능)
// String 으로 변경해서 쓰는게 낫다.

// 문자열의 삭제
var myString5: String = "Swift Programming"
let resultString2 = myString5.removeAll()
myString5 = ""  // 그냥 빈값으로 변경

// 문자 하나를 지움.
var myString6: String = "Swift Programming"
let resultString3 = myString6.remove(at: myString6.startIndex)
print(myString6)

// 문자열을 지움.
var myString7: String = "Swift Programming"
let removeRange =
    myString7.index(myString7.startIndex, offsetBy: 0)
        ... myString7.index(myString7.startIndex,
    offsetBy: 5)
myString7.removeSubrange(removeRange)

// 반복문으로 자르기
var myString8: String = "Swift Programming"
var arrayCh: [Character] = []
var index = 0
for ch in myString8 {
    if index > 5 {
        arrayCh.append(ch)
    }
    index += 1
}
let newCharString = String(arrayCh)

// 문자열 검색
let myString9 = "Swift Programming"
if myString9.contains("Swift") {
    print("Swift 문자열이 있음")
} else {
    print("Swift 문자열이 없음")
}

if let result = myString9.range(of: "Swift") {
    print("Swift 문자열이 있음")
} else {
    print("Swift 문자열이 없음")
}

// 문자열 분리
let myString10 = "1,2,3,4,5"
let list:[String] = myString10.components(separatedBy: ",")
for ch in list { // 문자열 배열
    print(ch)
}

let list2 = myString10.split(separator: ",")
for ch in list2 {
    print(ch)
}

// 문자열을 숫자로 바꿀 때 = 형변환 (새로운 변수를 생성!!)
let myString11 = "123"
let myInt: Int? = Int(myString11)
let myInt2 = 200
let myStringNum: String? = String(myInt2)

// 형변환 Int -> Float
let myFloat = 3.14
let myInt3: Int? = Int(myFloat)
let myFloat2: Float? = Float(300)

// NSNumber - 숫자 타입의 데이터를 모두 래핑할 수 있는 클래스
//            Int, Float, Double, Bool
var myBool: Bool = true
let boolObject = NSNumber(value: myBool)
var myBool2: Bool = boolObject.boolValue
