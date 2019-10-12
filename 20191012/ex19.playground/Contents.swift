import UIKit

// 옵셔널 체이닝 20장
// 널체크를 간편하게 하는 방법


// 클래스 안에 클래스 객체를 넣어줌.
class Person {
    var contact: Contact?
    // 생성자 함수
    init() {
        contact = Contact() // 생성할 때 만들어준다.
    }
}
class Contact {
    var address: String?
    var phone: String?
    var email: String? = "N/A"
}

let p = Person()
dump(p)

// p.contact = nil
// 옵셔널 변수에 접근할 때, nil이면 자동으로 호출안됨.(옵셔널 체이닝)
// 이렇게 옵셔널 체이닝을 안쓰면 다 if let 해줘야한다.
p.contact?.email? = "abc@gmail.com" // nullable이기 때문에 물음표 붙인다.


if let email = p.contact?.email {
    print(email)
} else {
    print("email이 nil입니다.")
}
