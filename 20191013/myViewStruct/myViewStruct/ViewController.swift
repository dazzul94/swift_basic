import UIKit

// 화면이동하는 방법
// 1. 네비게이션 컨트롤러(Navigation Controller) 이용 - 권장
//    Push, Pop(Segue, Coding)
// 2. 팝업 컨트롤러: 일시적 팝업시.(로그인/회원가입/공지사항/이벤트/이용방법)
//    Present, Dismiss(Segue, Coding)

class ViewController: UIViewController {

    // ******수면주기**********
    // 1. 뷰가 시작될 때 한번 호출됨.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1. viewDidLoad")
    }
    // 2. 뷰가 로드되고, 화면이 보이지 직전에 호출됨.
    override func viewWillAppear(_ animated: Bool) {
        print("2. viewWillAppear")
    }
    // 3. 뷰가 로드되고, 화면이 보이고 나서 호출됨
    override func viewDidAppear(_ animated: Bool) {
        print("3. viewDidAppear")
    }
    // 4. 화면이 보이고, 레이아웃들이 설정되기 전에 호출됨.
    override func viewWillLayoutSubviews() {
        print("4. viewWillLayoutSubviews")
    }
    // 5. 화면에 보이고, 레이아웃들이 설정된 후에 호출됨.
    override func viewDidLayoutSubviews() {
        print("5. viewDidLayoutSubviews")
    }
    // 6. 화면이 사라지기 전에 한번 호출됨.
    override func viewWillDisappear(_ animated: Bool) {
        print("6. viewWillDisappear")
    }
    // 7. 화면이 사라지고 나서 호출됨.
    override func viewDidDisappear(_ animated: Bool) {
        print("7. viewDidDisappear")
    }
//    //  뷰를 로드할 때 커스텀할 때 사용함. (잘안씀)
//    override func loadView() {
//        print("loadView")
//    }

}

