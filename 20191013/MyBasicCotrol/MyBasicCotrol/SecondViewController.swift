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
        print("textFieldshouldreturn 입력됨.")
        return true
        // return false로 하면 이벤트가 무시된다. -> 처리를 하지않는다.
    }
    
}
