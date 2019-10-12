import UIKit

// ex17
// 열거형(Enum) : 15장 259쪽

// 데이터 상수를 정의할때, 숫자로 기억하기 보다 , 문자열로 기억하기 쉽다.
// 가위바위보 게임을 만들때, 가위0, 바위1, 보2 정의한다.
// 가위 = 0으로 기억하기보다, Enum의 Scissors로 정의하면 알기 쉽다.

// 기존 Enum(자바, C)는 단순 배열인데,
// 스위프트에서는 클래스처럼 확장됨. 기존의 Enum과는 많이 다르다.
enum Weekday {
    case mon
    case tue
    case wed
    case thu, fri, sat, sun
}
var day: Weekday = Weekday.mon  // 가독성이 좋아진다. 효율이 높다. 디버깅 쉽다. 시간이 절약된다.
day = Weekday.sat
day = .sun // 타입이 명확하면, Enum이름을 생략가능한다.

// switch case문과 Enum 연동 가능
switch day {
case .mon, .tue, .wed, .thu:
    print("월화수목 입니다.")
case .fri, .sat:
    print("금토 입니다.")
case .sun:
    print("일요일 입니다.")
}

enum Hero: Int {
    case Ironman = 0
    case Spiderman = 1
    case Hulk   // 2값이 들어갈 것으로 예상됨.
}
print(Hero.Ironman) // 문자
print(Hero.Ironman.rawValue)    // 숫자
print(Hero.Spiderman)
print(Hero.Spiderman.rawValue)
print(Hero.Hulk)
print(Hero.Hulk.rawValue)

// 정수값을 주어서 열거형 변수를 선언할 수 있다.
var myHero: Hero? = Hero(rawValue: 5)   // rawValue가 5인 hero가 없어서 nil
print(myHero)

// nil인 옵셔널변수를 안전하게 제어하려면 , 옵셔널 바인딩을 이용한다.
if let hero = myHero {
    print("nil 아님, \(hero)")
    
} else {
    print("nil 임")
}

enum Month {
    case jan, feb, mar
    case apr, may, jun
    case jul, aug, sep
    case oct, nov, dec
    // 함수를 넣을 수 있다.
    func printMonth(){
        switch self {
        case .jan, .feb, .mar:
            print("1, 2, 3 월")
        case .apr, .may, .jun:
            print("4, 5, 6 월")
        case .jul, .aug, .sep:
            print("7, 8, 9 월")
        case .oct, .nov, .dec:
            print("10, 11, 12 월")
        }
    }
}

var myMonth: Month = Month.jan
myMonth.printMonth()

Month.apr.printMonth()
