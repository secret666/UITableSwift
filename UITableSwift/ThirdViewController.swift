//
//  ThirdViewController.swift
//  UITableSwift
//
//  Created by secert on 15/11/27.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
//    let width = UIScreen.mainScreen().bounds.size.width
//    let heigt = UIScreen.mainScreen().bounds.size.height
//    let itemWidth = (UIScreen.mainScreen().bounds.size.width - 5 * 2) / 7;
//    let itemHeight = ((UIScreen.mainScreen().bounds.size.width - 5 * 2) / 7)*2/3;
    
    var day = ""
    var month = ""
    var year = ""
    var dayArr = NSMutableArray()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //设置nav
        self.view.backgroundColor = UIColor.whiteColor()
        let navView = NavTitleView(frame: CGRectMake(0, 0, width, 64))
        navView.createView(imageName:"shop.png",title: "项目圈")
        self.navigationController?.navigationBar.addSubview(navView)
        
        
        //创建视图
        createCollection()
        createView()
        gettime()
        
    }
    
    func gettime() {
        let date = CalendarItem()
        date.getNowDayTime("yyyy-MM-d")
        let totalDay = date.getTotalInMonthOfDate(NSDate())
        date.getNextMonthDate()
        day = date.getNowDayTime("d")
        month = date.getNowDayTime("MM")
        year = date.getNowDayTime("yyyy")
        
        
        for index in Int(day)!...totalDay {
            dayArr.addObject(index)
        }
        
        
//        print("\()")
//        print("\()")
    }
    
    func createCollection() {
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSizeMake(itemWidth,itemHeight)
        flowLayout.minimumLineSpacing = 0.0;//每个相邻layout的上下
        flowLayout.minimumInteritemSpacing = 0.0;//每个相邻layout的左右
        
        let collection = UICollectionView(frame: CGRectMake(5, (-itemHeight*6-130)/2, width-10, itemHeight*6+70), collectionViewLayout: flowLayout)
        collection.backgroundColor = UIColor.whiteColor()
        collection.scrollEnabled = false
        collection.delegate = self
        collection.dataSource = self
        
        collection.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        self.view.addSubview(collection)
    }
    
    func createView() {
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
        
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 42
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
        
        let lab = UILabel(frame: CGRectMake(1, 1, itemWidth-2, itemHeight-2))
        lab.textAlignment = .Center
        lab.font = UIFont.systemFontOfSize(12)
        
        cell.addSubview(lab)
        
        switch (indexPath.row) {
        case 0...7:
            lab.text = "12.\(indexPath.row+1)"
        if (indexPath.row == 2||indexPath.row == 3){
            lab.textColor = UIColor.redColor()
            }
        case 7...14:
            lab.text = "上午"
        case 14...21:
            lab.text = "中午"
        case 21...28:
            lab.text = "下午"
        case 28...35:
            lab.text = "傍晚"
        default:
            lab.text = "晚上"
        }
        
        
        let topLine = UIView(frame:CGRectMake(0, 0, itemWidth, 1))
        topLine.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        cell.addSubview(topLine)

        let leftLine = UIView(frame:CGRectMake(0, 0, 1, itemHeight))
        leftLine.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
        cell.addSubview(leftLine)

        switch(indexPath.row){
        case 6, 13, 20, 27, 34, 41:
            let leftLine = UIView(frame:CGRectMake(itemWidth-1, 0, 1, itemHeight))
        leftLine.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
            cell.addSubview(leftLine)
        case 34...41:
            let topLine = UIView(frame: CGRectMake(0, itemHeight-1, itemWidth, 1))
            topLine.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
            cell.addSubview(topLine)
        
            
        default: break
        
        }
        
        if indexPath.row == 41{
            
            let topLine = UIView(frame: CGRectMake(0, itemHeight-1, itemWidth, 1))
            topLine.backgroundColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1)
            cell.addSubview(topLine)
        }

        
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//            collectionView.cellForItemAtIndexPath(indexPath.row)
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
