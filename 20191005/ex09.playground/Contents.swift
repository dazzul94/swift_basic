import UIKit

// 반복문 105쪽
// for문 while문 repeat-while문
// 60%   40%     1%

// for문
// for(int i = 0; i < 10; i++)
// for(초기화; 조건문; 증감문). 스위프트에서 안씀.
// for in 문장을 쓴다.(range를 줌)
for i in 1...10 {
    print(i)
}
for i in 0..<10 {
    print(i)
}

for i in (0..<10).reversed() {
    print(i)
}
print("-------------------------------")
// step 추가(1가 2씩 증가)
for i in stride(from: 0, to: 10, by: 2) {
    print(i)
}
print("-------------------------------")

// 배열과 관련된 개념이다. 간단하게 나옴.
var arrayInt = [1, 2, 3, 4, 5]
for i in arrayInt {
    print(i)
}

// 딕셔너리 Dictionary 간단하게 나옴.
let persons = ["john": 100, "tom": 200]
for (name, money) in persons {
    print(name)
    print(money)
}

// 더 알만한 것들
// 조건을 걸어서 Range를 사용하는 for 루프
// 1. 2의 배수로 끊기
for i in 0...30 where i % 2 == 0 {
    print(i)
}
