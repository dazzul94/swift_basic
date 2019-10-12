import UIKit

// ex24
// assert 와 guard
// assert (검증, 확인)
// guard (보호하다), Early Exit

// Assert: 검증을 통해서 코드가 통과하는지 조사한다.
var myInt: Int = 10

// 10이어야만 코드가 통과한다. 아니면 중단됨.
// 아래 코드가 더이상 수행될 의미가 없음.
assert(myInt == 10, "myInt가 10이 아님")

myInt = 20
// assert(myInt == 10, "myInt가 10이 아님")

func myFuncAssert(age: Int?) {
    assert(age != nil, "age가 nil임")
    assert(age! >= 0 && age! < 130, "age가 정상범위를 벗어남!")
    
    print("나이는 \(age!)입니다.")
}

myFuncAssert(age: 20)
// myFuncAssert(age: -1)
// myFuncAssert(age: nil)

// guard: 빠른 귀환(조건에 안맞으면 , 빠른 리턴)
// 조건도 콤마로 연결해서 걸 수 있다.
func myFuncGuard(age: Int?){
    guard let newAge = age, newAge < 130, newAge >= 0 else {
        print("나이값이 이상합니다!")
        return
    }
    print("나이는 \(age!)입니다.")
}

myFuncGuard(age: 40)
myFuncGuard(age: -1)
myFuncGuard(age: 140)
