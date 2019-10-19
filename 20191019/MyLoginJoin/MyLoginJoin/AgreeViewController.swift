//
//  AgreeViewController.swift
//  MyLoginJoin
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class AgreeViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        if mySwitch.isOn {
            self.dismiss(animated: true, completion: nil)
        } else {
            print("약관 동의가 안돼따")
        }

    }
}
