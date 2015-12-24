//
//  Color.swift
//  kxkg
//
//  Created by hefeiyue on 15/3/7.
//  Copyright (c) 2015年 奈文魔尔. All rights reserved.
//

import Foundation
import UIKit
extension UIColor {
    //主题色
    class func applicationMainColor() -> UIColor {
        return UIColor(red:30/255, green:195/255, blue:255/255, alpha:1)
    }
    class func viewBackgroundColor() ->UIColor{
        return UIColor(red:238/255, green:238/255, blue:238/255, alpha: 1.0);
    }
    class func textColor() ->UIColor {
        return UIColor(red: 104/255, green:104/255, blue:104/255, alpha: 1.0);
    }
    class func borderColor() ->UIColor {
        return UIColor(red:143/255, green:143/255, blue:143/255, alpha: 1.0);
    }
    /**
     sass
     
     - returns: as
     */
    class func borderColor1() ->UIColor {
        return UIColor(red:211/255, green:209/255, blue: 209/255, alpha: 1)
    }
    
//    //第二主题色
//    class func applicationSecondColor() -> UIColor {
//        return UIColor.lightGrayColor()
//    }
//    
//    //警告颜色
//    class func applicationWarningColor() -> UIColor {
//        return UIColor(red: 0.1, green: 1, blue: 0, alpha: 1)
//    }
//    
//    //链接颜色
//    class func applicationLinkColor() -> UIColor {
//        return UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha:1)
//    }
//    
}