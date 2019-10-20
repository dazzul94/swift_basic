//
//  MyTableViewCell.swift
//  MyTableView
//
//  Created by 503 on 2019/10/20.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myCollection: UILabel!
    
    // xib, nib 화면 레이아웃 파일
    // 초기화됐을 때 호출됨.
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // 테이블뷰가 셀이 선택됐을 때 호출됨.
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
