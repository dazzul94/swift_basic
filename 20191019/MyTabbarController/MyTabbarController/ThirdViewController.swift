//
//  ThirdViewController.swift
//  MyTabbarController
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func onBtnMove(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 0
    }
}
