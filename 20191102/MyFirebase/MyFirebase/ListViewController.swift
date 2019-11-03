//
//  ListViewController.swift
//  MyFirebase
//
//  Created by 503 on 2019/11/02.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct IdolData {
        var name:String = ""
        var imageString:String = ""
        // 딕셔너리: 키-값을 가진 데이터 구조, 자바의 콜렉션 맵
        // 스트럭트 데이터를 딕셔너리 구조로 바꿔서 반환해줌.
        // FireStore DB에 들어가는 데이터 구조
        // 1. Number
        // 2. String
        // 3. Array
        // 4. Dictionary
        // 결국은 스트럭트를 딕셔너리로 변환해서 넣어줘야한다.
        // 내가 관리하는 것은 스트럭트, 파이어베이스에서 관리하는건 딕셔너리
        func getDic() -> [String:String] {
            let dict = ["name": self.name, "imageString": self.imageString]
            return dict
        }
    }
    // Struct Array를 만들어 준다.
    var idolArray: Array<IdolData> = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 테이블뷰의 이벤트(스크롤, 데이타요청) 처리
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func onBtnAdd(_ sender: UIButton) {
        setValueIntoList()
    }
    @IBAction func onBtnRead(_ sender: UIButton) {
        getValueFromList()
    }
    func setValueIntoList() {
        var idol = IdolData()
        idol.name = "아이유"
        idol.imageString = "idol1.png"
        let idolDic = idol.getDic()
    
        let db = Firestore.firestore()
        var ref: DocumentReference? = nil
        ref = db.collection("idols").addDocument(data: idolDic) {
            err in
            if let error = err {
                print("쓰기 에러 발생", error)
            } else {
                print("데이터 쓰기 성공")
                print("도큐먼트 ID: ", ref!.documentID)
            }
        }
    }
    func getValueFromList() {
        let db = Firestore.firestore()
        db.collection("idols").getDocuments() {
            (querySnapshot, err) in
            if let error = err {
                print("읽기 에러 발생", error)
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                    let dataDic = document.data() as NSDictionary
                    let name = dataDic["name"] as? String ?? ""
                    let imageString = dataDic["imageString"] as? String ?? ""
                    var idol = IdolData()
                    idol.name = name
                    idol.imageString = imageString
                    self.idolArray.append(idol)
                }
                // for문이 끝났을 때 리로드
                self.tableView.reloadData()
            }
        }
    }
    
    // MARK: - DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.idolArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        cell.labelName.text = self.idolArray[indexPath.row].name
        cell.myImage.image = UIImage(named: self.idolArray[indexPath.row].imageString)
        cell.selectionStyle = .none
        
        return cell
    }
    // MARK: - TableView Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)번째 선택됨.")
    }
}
