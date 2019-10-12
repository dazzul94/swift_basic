import UIKit

// 익스텐션(Extension) : 확장
// 기본에 있는 클래스, 구조체, 열거형, 자료형(구조체)에 기능을 확장해줌.

// 클래스의 상속      <->         익스텐션
// 수직 확장                      수평확장(함수나 변수의 갯수가 증가함.)
// 클래스만 지원                  클래스, 구조체, 열거형, 자료형 다 지원함.
// 재정의 가능                    재정의 불가능(기존에 있는 것은 터치 불가)

extension Int {
    var isEven: Bool {
        get {
            return self % 2 == 0
        }
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

var myInt: Int = 10
myInt.isEven
myInt.isOdd
10.isEven
10.isOdd

extension Int {
    func multiply(by n: Int) -> Int {
        return self * n
    }
}
myInt.multiply(by: 2)
10.multiply(by: 3)
