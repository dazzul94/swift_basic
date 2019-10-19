//
//  SecondController.swift
//  myViewStruct
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class SecondController: UIViewController {

    // 전달받을 데이터 변수 선언
    var data:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("전달받은 데이타:", self.data)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdController// self.storyboard 는 Main.storyboard 를 의미한다.
        // as 는 형변환
        self.navigationController?.pushViewController(newVC, animated: true)
        
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
         self.navigationController?.popViewController(animated: true)
    }
    
}
