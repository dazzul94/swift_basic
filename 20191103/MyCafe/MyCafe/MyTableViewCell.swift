//
//  MyTableViewCell.swift
//  MyCafe
//
//  Created by 503 on 2019/11/03.
//  Copyright © 2019 dasol. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var imageVMenu: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
