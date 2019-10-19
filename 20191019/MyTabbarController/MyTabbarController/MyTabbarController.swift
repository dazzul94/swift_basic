//
//  MyTabbarController.swift
//  MyTabbarController
//
//  Created by 503 on 2019/10/19.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class MyTabbarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tabbar의 이벤트를 자신이 받겠다는 의미. 자신이 받는 이벤트를 자신이 받겠다.
        self.delegate = self
    }
    // didSelectsms 탭바가 선택됐을 때 발생하는 이벤트.
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("선택된 뷰의 인덱스: ", tabBarController.selectedIndex)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
