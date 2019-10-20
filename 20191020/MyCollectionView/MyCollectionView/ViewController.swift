//
//  ViewController.swift
//  MyCollectionView
//
//  Created by 503 on 2019/10/20.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

// CollectionView: 일반 이벤트, 데이터소스 이벤트
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let names:Array<String> = [
        "아기수망","어른수망", "수망이2", "베니", "베니", "베락토스","꽃베니", "햇빛베니", "철장베니", "베니베니"
    ]
    let collections:Array<String> = [
        "수망수망", "수망수망", "수망수망", "베니베니", "베니베니", "베니베니","베니베니", "베니베니", "베니베니", "베니베니"
    ]
    let images:Array<String> = [
       "아기수망.jpeg", "어른수망.jpeg", "수망이.jpeg", "갸갹베니.jpeg", "목덜미베니.jpeg", "베락토스.jpeg",
       "꽃베니.jpeg", "햇빛베니.jpeg", "철장베니.jpeg", "베니.jpeg"
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - 콜렉션뷰 데이타소스
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = UIImage(named: images[indexPath.row])
        cell.myName.text = names[indexPath.row]
        cell.myCollection.text = collections[indexPath.row]
        
        return cell
    }
    // MARK: - 콜렉션뷰 데이타소스
}

