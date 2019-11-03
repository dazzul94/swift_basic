//
//  ViewController.swift
//  MyCafe
//
//  Created by 503 on 2019/11/03.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        // 네비게이션바를 숨기기(메인메뉴에서는 안이쁨)
        self.navigationController?.isNavigationBarHidden = true
    }

}

