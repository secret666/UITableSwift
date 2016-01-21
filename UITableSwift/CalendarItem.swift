//
//  CalendarItem.swift
//  UITableSwift
//
//  Created by secert on 15/12/3.
//  Copyright © 2015年 bbx. All rights reserved.
//

import UIKit

class CalendarItem: NSObject {
    
    let day:String = ""
    let month:String = ""
    let year:String = ""
    
    
    
    //获取当前日期
    func getNowDayTime(dateFromString:String) -> (String) {
        
        let date:NSDate = NSDate()
        let formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = dateFromString
        let dateString = formatter.stringFromDate(date)
        print(dateString)
        return dateString
        
    }
    
    // 获取date当前月的总天数
    func getTotalInMonthOfDate(date:NSDate) -> (Int){
        let calendar = NSCalendar.currentCalendar()
        let range:NSRange = calendar.rangeOfUnit(.Day, inUnit: .Month, forDate: date)
        print("本月总天数：\(range.length)")
        return range.length
    }
    
    
    // 获取date的下个月日期
//    - (NSDate *)nextMonthDate {
//    NSDateComponents *components = [[NSDateComponents alloc] init];
//    components.month = 1;
//    NSDate *nextMonthDate = [[NSCalendar currentCalendar] dateByAddingComponents:components toDate:self.date options:NSCalendarMatchStrictly];
//    return nextMonthDate;
//    }
    
    func getNextMonthDate() {
        let components = NSDateComponents()
        components.month = 1
        let calendar = NSCalendar.currentCalendar()
        let date = calendar.dateByAddingComponents(components, toDate: NSDate(), options: .MatchStrictly)
        let formatter:NSDateFormatter = NSDateFormatter()
        formatter.dateFormat = "yyyy-MM-d"
        let dateString = formatter.stringFromDate(date!)
        print("下个月日期\(dateString)")
//        print("下个月日期\(date)")
    }
    
    // 获取date的上个月日期
//    - (NSDate *)previousMonthDate {
//    NSDateComponents *components = [[NSDateComponents alloc] init];
//    components.month = -1;
//    NSDate *previousMonthDate = [[NSCalendar currentCalendar] dateByAddingComponents:components toDate:self.date options:NSCalendarMatchStrictly];
//    return previousMonthDate;
//    }
    

    

}
