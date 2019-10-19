//
//  LoginViewController.swift
//  MyLoginJoin
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var textFieldID: UITextField!
    @IBOutlet weak var textFieldPW: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func onBtnLogin(_ sender: UIButton) {
        // 로그인 처리
        let id = textFieldID.text
        let pw = textFieldPW.text
    
        appDelegate.userInfo.id = id!
        appDelegate.userInfo.pw = pw!
        appDelegate.isLogin = true
        
        // 메인화면으로 이동
        self.navigationController?.popToRootViewController(animated: true)
    }
}
