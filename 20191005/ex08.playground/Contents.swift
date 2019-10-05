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

let randomNum2: UInt32 = arc4random_uniform(51)
if randomNum2 < 20 {
    randomNum2 = arc4random_uniform(51)
    print(randomNum2)
    if randomNum2 < 30 {
        print("30보다 작음")
    } else if randomNum2 < 40 {
        print("40보다 작음")
    } else if randomNum2 < 50 {
        print("50보다 작음")
    }
}
