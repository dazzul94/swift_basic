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


// while문
// 초기화
// while 조건문 - 소괄호는 사라짐
// {
//      수행문..
//      증감문
// }

var index = 0
while index < 10 {
    print(index)
    index += 1  // ++연산자가 사라짐
}

// break: 반복문 탈출
// continue: 반복문 귀환. 다시한번 루프를 돌린다. 처음으로 돌린다.

// 무한반복문
while true {
    print(index)
    index += 1
    if index > 100 {
        break
    }
}

for i in 1...100 {
    if i % 2 == 0 { // 2의 배수임. 짝수임.
        continue    // 반복문의 처음으로 돌아간다.
    }
    print(i)
}

// repeat-while 문
// repeat-while과 while의 차이점: 조건이 앞에 있냐 뒤에있냐 차이
// 적어도 한번은 실행된다.

// 초기화
// repeat {
//      수행문...
//      증감문
// } while 조건문

var index2 = 0
repeat {
    print(index2)
    index2 += 1
} while index2 < 100

// 이중 for문: for문 안에 for문 - 구구단 출력
for i in 2...9 {
    for j in 1...9 {
        print("\(i) * \(j) = \(i * j)") // 인터폴레이션
    }
}
