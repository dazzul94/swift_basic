//
//  ThirdController.swift
//  myViewStruct
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class ThirdController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
  
    @IBAction func onBtnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
