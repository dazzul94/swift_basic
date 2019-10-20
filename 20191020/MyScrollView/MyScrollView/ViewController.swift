//
//  ViewController.swift
//  MyScrollView
//
//  Created by 503 on 2019/10/20.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
/**
     1. scroll view 만들기(전체 딱맞게)
     2. uiview 만들기(scroll view와 딱맞게)
     3. Document outline에서 uiview의 이름을 contentView로 변경
     4. contentView -> Scroll View
     5. contentView -> Safe Area
*/
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // ScrollView에 오토레이아웃 지정되었으므로,
    // 뷰 레이아웃이 설정된 후에 제어해야 됨.
    override func viewDidLayoutSubviews() {
        scrollView.backgroundColor = UIColor.blue
    }
    
    // 스크롤뷰가 스크롤 되었을 때 호출됨.
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollViewDidScroll")
        print("현재 위치: ", scrollView.contentOffset)
    }
    // 드래깅 하기 전에 호출됨.
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("scrollViewWillBeginDragging")
    }
    // 드래깅이 끝나기 전에
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("scrollViewWillEndDragging")
        print("속도: ", velocity)
    }
}

