//
//  TableViewCell.swift
//  UITableSwift
//
//  Created by secert on 15/11/26.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var headImage: UIImageView!
    @IBOutlet weak var nickName: UILabel!
    @IBOutlet weak var contentLab: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
