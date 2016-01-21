//
//  BaseNavgationController.swift
//  UITableSwift
//
//  Created by secert on 15/11/27.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class BaseNavgationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //隐藏自身的navbar
        self.navigationController?.navigationBar.translucent = false
        self.automaticallyAdjustsScrollViewInsets = false
        
        let swipgGesture = UISwipeGestureRecognizer(target: self, action: Selector("swipAction:"))
        swipgGesture.direction = .Right
        self.view.addGestureRecognizer(swipgGesture)
        
        func swipAction(gesture:UISwipeGestureRecognizer) {
            if self.viewControllers.count > 1 {
                if gesture.direction == .Right{
                    self.popViewControllerAnimated(true)
                }
            }
        }
        
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
