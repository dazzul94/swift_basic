import UIKit

// 조건문 if / switch

// 스위프트에서 조건문 if문에서는 소괄호가 없음.
// 반드시 중괄호가 필요하다.(braket)
var num: Int = 0

// if문
if num < 10 {
    print("10보다 작음.")
}

// if else문
if num > 10 {
    print("10보다 큼.")
} else {
    print("10보다 같거나 작음.")
}

if num > 10 {
    print("10보다 큼.")
} else if num == 5 {
    print("5다")
} else {
    print("그 외의 수.")
}

// 난수발생(임의의 수)
let randomNum: UInt32 = arc4random_uniform(10) // 0 ~ 9까지의 랜덤수 발생
print(randomNum)

// 연습문제
// 20부터 50까지의 랜덤수를 발생시켜
// 30보다 작으면, "30보다 작음"
// 40보다 작으면, "40보다 작음"
// 50보다 작으면, "50보다 작음" 이렇게 출력하시오.

let randomNum2: UInt32 = arc4random_uniform(31) + 20    // 0...30 + 20 => 20...50
print(randomNum2)
if randomNum2 < 30 {
    print("30보다 작음")
} else if randomNum2 < 40 {
    print("40보다 작음")
} else if randomNum2 < 50 {
    print("50보다 작음")
} else {
    print("50임")
}

// ******** guard구문
// guard let문, guard else문 -> 주로 함수 안에서 많이 쓴다.
// guard 뒤에는 꼭 else 가 붙어야한다.
func myFunc() {
    // var myString: String? = "hong"
    var myString: String? = nil
    guard let newStr = myString, myString == "hong" else {
        // 이름이 nil이거나 hong이 아닐 때 함수(myFunc())를 나간다.
        // 코드를 보호한다. 밑에 코드들이 더이상 수행되지 않도록
        print("올바른 이름이 아님")
        return
    }
    // 수행문들.....
}
myFunc()

// switch case 문: break문이 생략됨.
let randomNum3: UInt32 = arc4random_uniform(10)
print(randomNum3)
switch randomNum3 {
case 0:
    print("0")
case 1...5:
    print("1, 2, 3, 4, 5")
case 6..<10:
    print("6, 7, 8, 9")
default:
    print("그외의 값", randomNum3)
}

var name:String = "hong"
switch name { // 문자열을 넣을 수 있다.
case "hong":
    print("hong임.")
default:
    print("그 외")
}
