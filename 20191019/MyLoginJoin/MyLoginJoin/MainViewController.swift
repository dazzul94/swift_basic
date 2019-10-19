//
//  ViewController.swift
//  MyLoginJoin
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var labelStatus: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    // 뷰 컨트롤러가 생성될때 한번 호출됨.
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        if appDelegate.isLogin {
            labelStatus.text = "\(appDelegate.userInfo.id) 님, 안녕하세요."
        } else {
            labelStatus.text = "로그오프 상태"
        }
    }

    @IBAction func onBtnLogoff(_ sender: UIButton) {
        appDelegate.isLogin = false
        appDelegate.userInfo = UserInfo()
        labelStatus.text = "로그오프 상태"
    }
}

