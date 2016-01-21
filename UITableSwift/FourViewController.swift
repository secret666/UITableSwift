//
//  FourViewController.swift
//  UITableSwift
//
//  Created by secert on 15/11/27.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {

    var calendar:KeleCalMainView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.view.backgroundColor = UIColor.whiteColor()
        let navView = NavTitleView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 64))
        
        navView.createView(imageName:"shop.png",title: "约会")
        self.navigationController?.navigationBar.addSubview(navView)
        
        
        createCalendar()
//        createButton()
    }
    
    
    func createCalendar() {
        calendar = KeleCalMainView.init(frame: CGRectMake(0, 200, width, 200))
        calendar.render()
        calendar.next()
        calendar.pre()
        calendar.setToday()
        self.view.addSubview(calendar)
        
        
    }
    
    func createButton() {
        let space = (height-itemHeight*6-130)/2+itemHeight*6+90
        
        let leftButton = UIButton(type: .Custom)
        leftButton.frame = CGRectMake((width-220)/2, space, 100, 30)
        leftButton.setTitle("向前翻", forState: .Normal)
        leftButton.titleLabel?.font = UIFont.systemFontOfSize(12)
        leftButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        leftButton.addTarget(self, action: Selector("leftBtnClick:"), forControlEvents: .TouchUpInside)
        leftButton.backgroundColor = UIColor.blueColor()
        self.view.addSubview(leftButton)
        
        let view = UIView(frame: CGRectMake((width-220)/2+110, space, 100, 30))
        view.backgroundColor = UIColor.blueColor()
        self.view.addSubview(view)
        
        let rightButton = UIButton(type: .Custom)
        rightButton.frame = CGRectMake(0.5, 1, 99, 28)
        rightButton.titleLabel?.font = UIFont.systemFontOfSize(12)
        rightButton.setTitle("向后翻", forState: .Normal)
        rightButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        rightButton.addTarget(self, action: Selector("rightBtnClick:"), forControlEvents: .TouchUpInside)
        rightButton.backgroundColor = UIColor.whiteColor()
        view.addSubview(rightButton)
        
    }
    
    func leftBtnClick(sender:UIButton) {
        
    }
    
    func rightBtnClick(sender:UIButton) {
//        calendar._scrollView.contentOffset = CGSizeMake(<#T##width: CGFloat##CGFloat#>, <#T##height: CGFloat##CGFloat#>)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
