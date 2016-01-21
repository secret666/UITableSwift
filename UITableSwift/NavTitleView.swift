//
//  NavTitleView.swift
//  UITableSwift
//
//  Created by secert on 15/11/30.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class NavTitleView: UIView {
    
    var imgName:String = ""
    var titleLab:String = ""
    
    func createView(imageName imageName:String ,title:String){
        
        let imgView = UIImageView(frame: CGRectMake(10, 0, 30, 30))
        imgView.image = UIImage(named: "\(imageName)")
//        imgView.backgroundColor = UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 1)
        self.addSubview(imgView)
        
        let titleLab = UILabel(frame: CGRectMake(imgView.frame.origin.x+30+8, 0, 80, 30))
        titleLab.font = UIFont.systemFontOfSize(20)
        titleLab.textColor = UIColor.whiteColor()
        titleLab.text = title
        self.addSubview(titleLab)
    }
    
    
    //        let imgView = UIImageView(frame: CGRectMake(10, 0, 30, 30))
    //        imgView.image = UIImage(named: "")
    //        imgView.backgroundColor = UIColor(red: 0.4, green: 0.8, blue: 0.2, alpha: 1)
    //        self.navigationController?.navigationBar.addSubview(imgView)
    //
    //        let titleLab = UILabel(frame: CGRectMake(imgView.frame.origin.x+30+8, 0, 80, 30))
    //        titleLab.font = UIFont.systemFontOfSize(20)
    //        titleLab.textColor = UIColor.whiteColor()
    //        titleLab.text = "待办"
    //        self.navigationController?.navigationBar.addSubview(titleLab)
    
    
    

//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
