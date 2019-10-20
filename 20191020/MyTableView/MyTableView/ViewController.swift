//
//  ViewController.swift
//  MyTableView
//
//  Created by 503 on 2019/10/20.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

// TableView의 이벤트(일반 이벤트, 데이터소스 이벤트)
// 일반 이벤트: 클릭시, 레이아웃 그릴때
// 데이타 소스 이벤트: 실제데이타 갯수나 셀의 뷰 그릴 때

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let names:Array<String> = [
        "베니엄마","수애", "한지민", "박시연", "수지", "아이유","수애", "한지민", "박시연", "수지", "아이유"
    ]
    let collections:Array<String> = [
        "남베니", "상류사회", "눈이부시게", "간기남", "건축학개론", "Boo","상류사회", "눈이부시게", "간기남", "건축학개론", "Boo"
    ]
    let images:Array<String> = [
       "유진.jpeg", "수애.png", "한지민.png", "박시연.png", "수지.png", "아이유.png",
       "수애.png", "한지민.png", "박시연.png", "수지.png", "아이유.png"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 일반이벤트, 데이타소스 이벤트를 처리하는 클래스(객체)가 자신이다.
        tableView.delegate = self
        tableView.dataSource = self
        
        // 스토리보드에서도 딜리게이트 설정이 가능한다.
    }
    
    // 구분선이나 타이틀을 만들어줌.
    // MARK: - 테이블뷰 데이타소스
    
    // 테이블뷰 셀의 총 갯수를 반환
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 테이블뷰의 셀 뷰를 만들어서 반환
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // IndexPath: Section과 Row 두개가 온다.(우리는 단일섹션을 사용한다. <-> grouped table view)
        //            0:0 0:1 0:2 0:3 0:4
        
        // 테이블 뷰 셀은 메모리절약을 위해 재사용함.
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.myImageView.image = UIImage(named: images[indexPath.row])
        cell.myName.text = names[indexPath.row]
        cell.myCollection.text = collections[indexPath.row]
        
        // 기본 UI에서 테이블셀이 선택되면 회색처리가 됨. 안한다.
        cell.selectionStyle = .none
        return cell
    }
    
   // MARK: - 테이블뷰 딜리게이트

    // heightForRowAt 셀의 높이 100
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("선택된 셀의 위치: 섹션 ", indexPath.section)
        print("선택된 셀의 위치: 로우 ", indexPath.row)
    }
}

