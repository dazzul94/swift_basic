//
//  JoinViewController.swift
//  MyLoginJoin
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {

    @IBOutlet weak var textFieldID: UITextField!
    @IBOutlet weak var textFieldPw: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldPhone: UITextField!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onBtnJoin(_ sender: UIButton) {
        let id = textFieldID.text
        let pw = textFieldPw.text
        let name = textFieldName.text
        let phone = textFieldPhone.text
        
        appDelegate.userInfo.id = id!
        appDelegate.userInfo.pw = pw!
        appDelegate.userInfo.name = name!
        appDelegate.userInfo.phone = phone!
        
        print("회원가입되었습니다!")
        self.navigationController?.popViewController(animated: true)
    }
    @IBAction func onBtnAgree(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "AgreeVC") as! AgreeViewController
        // completion: 함수실행 후 처리할 코드- 클로저(비동기)
        self.present(newVC, animated: true, completion: nil)
    }
}
