import UIKit

// 튜플(Tuple): 간단 자료형
// 13장 208쪽
// ( 값1, 값2, 값3)
// (이름1: 값1, 이름2: 값2, 이름3: 값3)
// 딕셔너리보다 쓰기가 간편하다.

// 용도: 함수의 리턴형(반환값)은 항상 1개이다.
//       함수의 리턴형으로 튜플을 이용하면, 여러개의 값을 한번에 전달 가능.

let myTuple = (10, "tom", 3.14)
print(myTuple.0)
print(myTuple.1)
print(myTuple.2)

// 튜플 값에 이름을 붙여서 가져온다.
let (count, name , value) = myTuple
print(count)
print(name)
print(value)

// 튜플에 이름을 붙여서 선언한다.
let myTuple2 = (count:10, name:"tom", value:3.14)
print(myTuple2.count)
print(myTuple2.name)
print(myTuple2.value)

// 함수의 리턴형으로 값을 반환해 보자.
func myFunc() -> (Int, String, Float) {
    return (10, "tom", 3.14)
}
var result = myFunc()
print(result.0)
print(result.1)
print(result.2)

// 타입지정이 가능함. 타입얼라이스
typealias MyTupleType = (Int, String, Float)
func myFunc2() -> MyTupleType {
    return MyTupleType(10, "tom", 3.14)
}

var result2 = myFunc2()
print(result2.0)
print(result2.1)
print(result2.2)

let myTuple3: MyTupleType = (10, "tom", 3.14)
print(myTuple3)


