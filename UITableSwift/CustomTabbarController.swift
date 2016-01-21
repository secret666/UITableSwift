//
//  CustomTabbarController.swift
//  UITableSwift
//
//  Created by secert on 15/11/27.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class CustomTabbarController: UITabBarController {
    
    let ScreenWIDTH = UIScreen.mainScreen().bounds.size.width
    let ScreenHEIGHT = UIScreen.mainScreen().bounds.size.height
    let moveImage = UIImageView()
    let tabbarBgView = UIImageView()
    let tabbarWidth = UIScreen.mainScreen().bounds.size.width/5
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.hidden = true;
        
        creatView()
        
        loadViewController()
        
        // Do any additional setup after loading the view.
    }
    
    func test(tap:UITapGestureRecognizer){
        let view = tap.view
        let index = view?.tag
        let z = (index)!*Int(tabbarWidth)
        let c = CGFloat(z)
        let x:CGFloat = c
        UIView.beginAnimations("test", context: nil)
        moveImage.frame = CGRectMake(x, 0, tabbarWidth, 49)
        UIView.commitAnimations()
        
        self.selectedIndex = (view?.tag)!
        
    }

    
    func creatView() {
        
        //背景图
        tabbarBgView.frame = CGRectMake(0, ScreenHEIGHT-49, ScreenWIDTH, 49)
        tabbarBgView.backgroundColor = UIColor.blueColor()
        tabbarBgView.userInteractionEnabled = true
        self.view.addSubview(tabbarBgView)
        //移动的图片
        moveImage.frame = CGRectMake(0, 0, tabbarWidth, 49)
        moveImage.backgroundColor = UIColor(red: 0.4, green: 0.7, blue: 0.3, alpha: 1)
        tabbarBgView.addSubview(moveImage)
        
        let imgArr = ["home", "preson", "collection", "shop", "wait"]
        let labArr = ["项目", "待办", "项目圈", "约会", "我"]
        
        let imgW = tabbarWidth-40
        for index in 0...4{
            
            let imgView = UIImageView(frame: CGRectMake(21+tabbarWidth * CGFloat(index), 5, imgW, imgW))
            
            imgView.userInteractionEnabled = true
            imgView.tag = index
            let tap=UITapGestureRecognizer(target:self,action:Selector("test:"))
            imgView.addGestureRecognizer(tap)
            
            imgView.image = UIImage(named: imgArr[index])
            tabbarBgView.addSubview(imgView)
            
            
            let lab = UILabel(frame: CGRectMake(tabbarWidth * CGFloat(index), 29, tabbarWidth, 20))
            lab.text = labArr[index]
            lab.textAlignment = .Center
            lab.font = UIFont.systemFontOfSize(12)
            lab.textColor = UIColor.whiteColor()
            tabbarBgView.addSubview(lab)
            
            
        }
        
        
    }
    
    
    
    
    func loadViewController(){
        
        let homeVC:UIViewController = ViewController()
        let homeItem = UITabBarItem(tabBarSystemItem: .Favorites, tag: 1)
        homeVC.tabBarItem = homeItem
        let homeNav = BaseNavgationController(rootViewController: homeVC)
        
        
        let secondVC:UIViewController = SecondViewController()
        let secondItem = UITabBarItem(tabBarSystemItem: .Favorites, tag: 2)
        secondVC.tabBarItem = secondItem
        let secondNav = BaseNavgationController(rootViewController: secondVC)
        
        
        let thirdVC:UIViewController = ThirdViewController()
        let thirdItem = UITabBarItem(tabBarSystemItem: .Favorites, tag: 3)
        thirdVC.tabBarItem = thirdItem
        let thirdNav = BaseNavgationController(rootViewController: thirdVC)
        
        
        let fourVC:UIViewController = FourViewController()
        let fourItem = UITabBarItem(tabBarSystemItem: .Favorites, tag: 4)
        fourVC.tabBarItem = fourItem
        let fourNav = BaseNavgationController(rootViewController: fourVC)
        
        
        let fiveVC:UIViewController = FiveViewController()
        let fiveItem = UITabBarItem(tabBarSystemItem: .Favorites, tag: 5)
        fiveVC.tabBarItem = fiveItem
        let fiveNav = BaseNavgationController(rootViewController: fiveVC)
    
        
        //数组
        let ctrls = [homeNav,secondNav,thirdNav,fourNav,fiveNav]
        //添加
        self.setViewControllers(ctrls,animated:true)
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
