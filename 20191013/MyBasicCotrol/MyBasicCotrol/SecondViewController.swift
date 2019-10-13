//
//  SecondViewController.swift
//  MyBasicCotrol
//
//  Created by 503 on 13/10/2019.
//  Copyright © 2019 503_18. All rights reserved.
//

import UIKit

// Delegate는 프로토콜이다.
class SecondViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textfieldData: UITextField!
    @IBOutlet weak var textviewData: UITextView!
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // 글자가 입력될 때 이벤트
        print("텍스트필드 입력됨.")
        textviewData.text = textField.text  // 텍스트 필드에 입력된 데이터를 view에 넣어준다.
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
        // return false로 하면 이벤트가 무시된다. -> 처리를 하지않는다.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }
    
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        print("스위치 변경됨.", sender.isOn)
        // 켜지면 true, 꺼지면 false
    }
    
    @IBAction func onSegmentChanged(_ sender: UISegmentedControl) {
        print("세그먼트 변경됨.", sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            progressView.progress = 0.3
            indicator.startAnimating()
        case 1:
            progressView.progress = 0.6
        case 2:
            progressView.progress = 0.9
            indicator.stopAnimating()
        default:
            progressView.progress = 0
        }
    }
    @IBAction func onSliderChanged(_ sender: UISlider) {
        print("슬라이더 변경됨.", sender.value)    // 0.0 ~ 1.0
        progressView.progress = sender.value    // slider를 바꾸면 progress도 바뀐다.
    }
}
