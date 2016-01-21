//
//  ViewController.swift
//  UITableSwift
//
//  Created by secert on 15/11/18.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

let width = UIScreen.mainScreen().bounds.size.width
let height = UIScreen.mainScreen().bounds.size.height
let itemWidth = (UIScreen.mainScreen().bounds.size.width - 5 * 2) / 7;
let itemHeight = (UIScreen.mainScreen().bounds.size.width - 5 * 2) / 7*2/3;

class ViewController:UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    var table = UITableView();
    // 生命全局变量
    
    //数据源
    
//    var dataArray = ["dd","cc","ee"];
//    
    var  dataArr = ["路飞", "千寻", "孙悟空", "柯南"];
    var  headImgArr = ["1.png", "2.jpg", "3.jpg", "4.jpg"]
    var  contentArr = ["我是要成为海贼王的男人！！！", "终于周末了，要好好睡一觉", "师父，俺老孙去也！！！", "真相只有一个！"]
    //声明tableView
//    var tableView :UITableView?;
    
//    let width = UIScreen.mainScreen().bounds.size.width
//    let height = UIScreen.mainScreen().bounds.size.height

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        print("arr-----\(dataArray)")
//        
//        //给数组增加元素
//        dataArray.append("ll")
//        print("arr-----\(dataArray)")
//        dataArray += ["aa","bb"];
//        print("arr-----\(dataArray)")
//        
//        //修改数组
//        dataArray[1] = "rr";
//        print("arr-----\(dataArray)")
//        //替换数组中元素
//        dataArray[2...4] = ["AA", "BB", "CC"]
//        print("arr-----\(dataArray)")
//        
//        //插入元素
//        dataArray.insert("KK", atIndex: 2)
//        print("arr-----\(dataArray)")
//        
//        //删除元素
//        dataArray.removeAtIndex(2)
//        print("arr-----\(dataArray)")
//        
//        //数组字面量创建
//        var array = ["s", "d", "f"]
//        array.append("g")
//        print("array --------- \(array)")
//        
//        //
//        var a = [Int](count: 9, repeatedValue: 1)
//        a.count
//        a.insert(12, atIndex: 2)
//        print("a------- \(a)")
//        
//        
//        
//        
//        //字典
//        //构造方法
//        var dictionary = [Int:String]()
//        dictionary[10] = "asd"
//        
//        var dic : [String: String] = ["key1":"value1", "key2":"value2", "key3":"value3", "key4":"value4", "key5":"value5"]
//        //增加字典元素
//        dic["key6"] = "value6"
//        print("dic -------- \(dic)")
//        
//        //修改
//        dic["key"] = "value3"
//        print("dic -------- \(dic)")
//        
//        dic.updateValue("value1", forKey: "key11111")
//        print("dic -------- \(dic)")
//        
//        dic.removeValueForKey("key1")
//        print("dic -------- \(dic)")
//        
////        dic.removeAtIndex("key2")
//        for (_, _) in dic{
//             print("dic -------- \(dic.keys):\(dic.values)")
//        }
//        print("dic -------- \(dic)")
//        
//        
//        
//        //for in 语句
//        for index in 1...5{
//            print("\(index) ------ \(index*5)")
//        }
//        
//        let num = 3
//        let num2 = 10
//        var num3 = 1
//        for _ in 1...10{
//            num3 *= num
//        }
//        
//        print("\(num)^\(num2)== \(num3)")
////        let dic1 = "第三部发美女上课的法律"
////        for dd in "第三部发美女上课的法律" {
////            println(dd)
////        }
//        
//        
//        //for
//        for var i = 0; i < 4; ++i{
//            
//            print(i)
//        }
    
//        self.title = "项目"
        
        creatNavTitle()
        self.view.backgroundColor = UIColor(red: 0.7, green: 0.3, blue: 0.6, alpha: 1)
        setLayout()
        
        // Do any additional setup after loading the view.
       
        
    }
    
    func creatNavTitle(){
        
        let navView = NavTitleView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.size.width, 64))
        
        navView.createView(imageName:"home.png",title: "项目")
        self.navigationController?.navigationBar.addSubview(navView)
        

    }
    
    
    //布局方法
    func setLayout()
    {
        let  rect=self.view.bounds;
        //  创建TableView
        table = UITableView(frame:rect,style:.Plain);
        // 设置代理
        table.delegate=self;
        table.dataSource=self;
        //添加视图
        self.view.addSubview(table);
        
//        table.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.registerNib(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }
    
    
    //UITableViewDataSource 代理办法
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        
        return dataArr.count;
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        let cell = tableView .dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
//        let s = dataArr.objectAtIndex(indexPath.row) as? String;
        
        cell.headImage.layer.masksToBounds = true;
        cell.headImage.layer.cornerRadius = 35;
        cell.headImage.image = UIImage(named: headImgArr[indexPath.row])
        cell.nickName?.text = dataArr[indexPath.row]
        cell.contentLab?.text = contentArr[indexPath.row]
//        contentArr(indexPath.row)
//        cell.textLabel?.text = s;
        return cell;
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 170
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

