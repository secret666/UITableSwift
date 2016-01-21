//
//  CollectionViewCell.swift
//  UITableSwift
//
//  Created by secert on 15/12/3.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    var contentLab: UILabel!
    let itemWidth = (UIScreen.mainScreen().bounds.size.width - 5 * 2) / 7;
    let itemHeight = (UIScreen.mainScreen().bounds.size.width - 5 * 2) / 7*2/3;
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.frame = CGRectMake(0, 0, itemWidth, itemHeight)
//        contentLab = UILabel()
        contentLab.frame = CGRectMake(0, 0, itemWidth, itemHeight)
        self.addSubview(contentLab)
    }
    
    

}
