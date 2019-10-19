import UIKit

// 화면이동하는 방법
// 1. 네비게이션 컨트롤러(Navigation Controller) 이용 - 권장
//    Push, Pop(Segue, Coding)
// 2. 팝업 컨트롤러: 일시적 팝업시.(로그인/회원가입/공지사항/이벤트/이용방법)
//    Present, Dismiss(Segue, Coding)

// 뷰 컨트롤러 사이에 데이타 전달할 때
// 1. 전역 클래스 이용한다.
// 2. 뷰컨트롤러의 변수에 데이타 전달하거나(Segue로 이동, 코드로 이동)
//  A클래스 -> B클래스 값 전달
// 3. 뷰컨트롤러의 인스턴스를 전달한다.(Segue로 이동, 코드로 이동)
//  B클래스 -> A클래스 값 전달
class ViewController: UIViewController {
    var data:String = ""
    // ******수면주기**********
    // 1. 뷰가 시작될 때 한번 호출됨.
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1. viewDidLoad")
        // back할때는 다시는 호출 안됨.
    }
        // 네비게이션 컨트롤러 함수들(뷰 관리)
        
        // 뒤로가기
//        self.navigationController?.popViewController(animated: true)
        // 최상위 뷰로 바로 이동
//        self.navigationController?.popToRootViewController(animated: true)
        // 특정 번째 뷰로 이동하기. 2번째, 3번째
//        self.navigationController?.popToViewController(newVC, animated: true)
        // 특정 뷰를 삭제할 때(배열에서 삭제할 수 있다.)
//        self.navigationController?.viewControllers.remove(at: 2)
        // 중간에 뷰를 추가할수있다.
//        self.navigationController?.viewControllers.append(newVC)

    // 2. 뷰가 로드되고, 화면이 보이지 직전에 호출됨.
    override func viewWillAppear(_ animated: Bool) {
        print("2. viewWillAppear")
        // back 할 때 다시 호출됨.
        print("MainVC 전달 받은 데이터: ", data)
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
    // Segue로 이동할 땐 코드 발생이 안됐다. -> 코드발생을 시켜줘야한다. override
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let vc = segue.destination as! SecondController
            vc.data = "안녕하세요1"
            vc.mainVC = self // MainViewController의 인스턴스
        }
    }
    
    
    // 코드로 화면이동
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondController// self.storyboard 는 Main.storyboard 를 의미한다.
        // as 는 형변환
        newVC.data = "안녕하세요2"
        newVC.mainVC = self // MainViewController의 인스턴스
        self.navigationController?.pushViewController(newVC, animated: true)
    }
}

