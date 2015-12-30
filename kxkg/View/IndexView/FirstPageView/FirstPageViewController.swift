//
//  FirstPageViewController.swift
//  kxkg
//
//  Created by penghao on 15/12/30.
//  Copyright © 2015年 penghao. All rights reserved.
//

import Foundation
import UIKit
///当前页面只显示启动画面
class FirstPageViewController:UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView=UIImageView(frame:self.view.bounds)
        imageView.image=UIImage(named: "huanying");
        self.view.addSubview(imageView);
        self.performSelector("finishLoadData", withObject:nil, afterDelay:0.5)
        //接收通知 删除当前页面
        NSNotificationCenter.defaultCenter().addObserver(self, selector:"deleteSelf:", name: "notificationDeleteFirstPageView", object:nil)
    }
    /**
     显示主页面
     */
    func finishLoadData(){
        let app=UIApplication.sharedApplication().delegate as! AppDelegate
        app.tabBar=TabBarViewController()
        //把主视图加入根视图
        self.view.superview?.addSubview(app.tabBar!.view)
        
    }
    /**
     实现通知方法
     
     - parameter obj:nil
     */
    func deleteSelf(obj:NSNotification){
        NSLog("引导页面已经删除****主页面开始展示")
        self.view.removeFromSuperview()
    }
}