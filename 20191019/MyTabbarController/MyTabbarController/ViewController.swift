//
//  ViewController.swift
//  MyTabbarController
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        // selectedIndex 현재 탭바의 인덱스 0:첫번째 뷰, 1:두번째 뷰
        if let index =  self.tabBarController?.selectedIndex {
            print("탭바 인덱스", index)
        } else {
            print("nildla")
        }
    }

    @IBAction func onBtnMove(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1
    }
    
}

