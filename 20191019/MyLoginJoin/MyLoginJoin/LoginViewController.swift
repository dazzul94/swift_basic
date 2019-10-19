//
//  LoginViewController.swift
//  MyLoginJoin
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

// 로컬에 데이터를 저장하는 방법
// Sqlite3: 비추천
// Realm: 추천(가능하면 서버에 데이타를 전달해서 사용하는 것이 좋다.)
// Core Data: 비추천
// UserDefaults: 간단한 키와 값을 저장할 수 있음.

// 로컬 파일에 간단 저장. (쿠키)
// UserDefaults: 간단한 키와 값을 저장할 수 있음.
// 안드로이드의 UserPreference

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
        
        // 로컬에 간단한 키와 값을 저장.
        // 비휘발성이기 때문에
        // 앱이 강제종료되더라도 기록이 남아 있음. 단, 앱이 삭제될때 같이 삭제된다.
        // 자동로그인시에는 이전 로그인 성공 기록을 남겨야됨.
        UserDefaults.standard.set(true, forKey: "isLogin")
        // 읽어오는 법
        let isLogin = UserDefaults.standard.bool(forKey: "isLogin")
        print("isLogin", isLogin)
        // 글로별 변수: 앱 전체에서 가져다가 쓸 수 있음.
        
        // 메인화면으로 이동
        self.navigationController?.popToRootViewController(animated: true)
    }
}
