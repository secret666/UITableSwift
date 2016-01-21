//
//  SecondViewController.swift
//  UITableSwift
//
//  Created by secert on 15/11/27.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
//    let height = UIScreen.mainScreen().bounds.size.height
//    let width = UIScreen.mainScreen().bounds.size.width
//    let itemWidth = (UIScreen.mainScreen().bounds.size.width - 5 * 2) / 7;
//    let itemHeight = (UIScreen.mainScreen().bounds.size.width - 5 * 2) / 7*2/3;
    
    var collectionView = CollectionViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        self.title = "待办"
        self.view.backgroundColor = UIColor(red: 0.7, green: 0.4, blue: 0.8, alpha: 1)
        
        let navView = NavTitleView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 64))
        
        navView.createView(imageName:"shop.png",title: "待办")
        self.navigationController?.navigationBar.addSubview(navView)
        
        
        creatCollectionView()
        
    }
    
    func creatCollectionView(){
//        let layout = UICollectionViewLayout()
        self.collectionView.view.frame = CGRectMake(5, (height-200)/2, width-10, 200)
        
//        self.collectionView = UICollectionView(frame: CGRectMake(5, (height-200)/2, width-10, 200)
//, collectionViewLayout: flowLayout)
//        self.collectionView.delegate = self
//        self.collectionView.dataSource = self
////        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//        self.collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier:"cell")
        
//        collectionView.view.frame = CGRectMake(5, (height-200)/2, width-10, 200)
        self.view.addSubview(self.collectionView.view)
        self.addChildViewController(collectionView)
    }
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 42
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath)
        
        cell.backgroundColor = UIColor.blueColor()
        
        
        return cell
    }
    
    

    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        let picDimension = self.view.frame.size.width / 4.0
        return CGSizeMake(itemWidth, itemHeight)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
//        let leftRightInset = self.view.frame.size.width / 14.0
        return UIEdgeInsetsMake(0, itemWidth, 0, itemHeight)
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
