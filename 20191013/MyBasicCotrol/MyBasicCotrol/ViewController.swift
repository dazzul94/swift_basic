
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    //버튼(컨트롤) 배열로 만들기
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var textfieldTitle: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.backgroundColor = UIColor.red
        btn1.backgroundColor = UIColor.cyan
        labelTitle.text = "제목줄"
        labelTitle.textColor = UIColor.white
        
        imageView.image =
            UIImage(named: "image2.png")
    }
    @IBAction func onBtn1Clicked(_ sender: UIButton) {
        print("버튼1 클릭됨.")
    }
    @IBAction func onBtn2Clicked(_ sender: UIButton) {
        print("버튼2 클릭됨.")
        
        for btn in buttons {
            btn.backgroundColor = UIColor.blue
        }
    }
    @IBAction func onBtnInputClicked(_ sender: UIButton) {
        let titleText = textfieldTitle.text
        labelTitle.text = titleText
        
    }
    

}

