//
//  ViewController.swift
//  MyFirebase
//
//  Created by 503 on 2019/11/02.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController: UIViewController {
    @IBOutlet weak var labeLogin: UILabel!
    @IBOutlet weak var textFiledID: UITextField!
    @IBOutlet weak var textFiledPW: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    func updateUI() {
        // Auth클래스: 인증(회원가입, 로그인, 암호)
        // currentUser: 세션을 유지 - 한번 로그인하면 파일에 저장해서
        // 다시 앱을 구동시키면 로그된 상태를 유지함.
        // 다시 로그인하려면, 로그아웃을 한번하고 해야됨.
        if let user = Auth.auth().currentUser {
            labeLogin.text = "로그인상태: \(user.email!) 로그인됨."
        } else {
            labeLogin.text = "로그인상태: 로그아웃"
        }
    }

    @IBAction func onBtnLogin(_ sender: UIButton) {
        if let textID = textFiledID.text, let textPW = textFiledPW.text {
            if textID.count < 1 || textPW.count < 6 {
                myAlert(title: "알럿창제목", message: "아이디나 암호의 길이가 짧습니다.")
                print("아이디나 암호의 길이가 짧습니다.")
                return
            }
            Auth.auth().signIn(withEmail: textID, password: textPW) {
                // 후행 클로저
                [weak self] user, error in
                guard let strongSelf = self else { return }
                self?.myAlert(title: "알럿창제목", message: "로그인 되었습니다!")
                print("로그인 되었습니다!")
                let user = Auth.auth().currentUser
                print("\(user?.email), \(user?.uid)")
                
                // 로그인 후에는 사용자의 정보를 가져와서
                // UserInfo Struct에 넣어줄수있다.
                
                self?.updateUI()
            }
        } else {
            myAlert(title: "알럿창제목", message: "아이디나 암호가 입력되지 않았습니다.")
            print("아이디나 암호가 입력되지 않았습니다.")
        }
    }
    @IBAction func onBtnLogout(_ sender: UIButton) {
        let firebaseAuth = Auth.auth()
        do {
            // 로그아웃 함수
            try firebaseAuth.signOut()
            myAlert(title: "알럿창제목", message: "로그아웃되었습니다.")
        } catch let signOutError as NSError {
            print("SignOutError: %@", signOutError)
        }
        updateUI()
    }
    @IBAction func onBtnJoin(_ sender: UIButton) {
        if let textID = textFiledID.text, let textPW = textFiledPW.text {
            if textID.count < 1 || textPW.count < 6 {
                myAlert(title: "알럿창제목", message: "아이디나 암호의 길이가 짧습니다.")
                print("아이디나 암호의 길이가 짧습니다.")
                return
            }
            Auth.auth().createUser(withEmail: textID, password: textPW) {
                authResult, error in
                guard let user = authResult?.user, error == nil
                    else {
                        print(error!.localizedDescription)
                        return
                }
                // 회원가입 성공함!
                print("\(user.email) 회원가입 성공함!")
                self.myAlert(title: "회원가입", message: "\(user.email!)   회원가입 성공함!")
            }
        }
    }
    func myAlert(title: String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
}

