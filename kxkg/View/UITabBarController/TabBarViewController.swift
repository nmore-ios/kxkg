//
//  TabBarViewController.swift
//  kxkgStore
//
//  Created by hefeiyue on 15/6/5.
//  Copyright (c) 2015年 奈文魔尔. All rights reserved.
//

import Foundation
import UIKit
///自定义tabBar
class TabBarViewController:UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        //首页
        let nav1=UINavigationController(rootViewController:IndexViewController())
        nav1.title="首页"
        nav1.tabBarItem.image=UIImage(named:"index_bottom_normal0")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//        nav1.tabBarItem.selectedImage=UIImage(named:"selected1.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let nav2=UINavigationController(rootViewController:OrderViewController())
        nav2.title="订单管理"
        nav2.tabBarItem.image=UIImage(named:"index_bottom_normal1")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//        nav2.tabBarItem.selectedImage=UIImage(named:"selected2.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)

        let nav3=UINavigationController(rootViewController:ShoppingCartViewController())
        nav3.title="购物车"
        nav3.tabBarItem.image=UIImage(named:"index_bottom_normal2")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//        nav3.tabBarItem.selectedImage=UIImage(named:"selected3.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)

        let nav4=UINavigationController(rootViewController:ErnieViewController())
        nav4.title="摇奖机"
        nav4.tabBarItem.image=UIImage(named:"index_bottom_normal3")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//        nav4.tabBarItem.selectedImage=UIImage(named:"selected4.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let nav5=UINavigationController(rootViewController:PersonalCenterViewController())
        nav5.title="个人中心"
        nav5.tabBarItem.image=UIImage(named:"index_bottom_normal4")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
//        nav5.tabBarItem.selectedImage=UIImage(named:"selected5.png")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        let arr=NSArray(array:[nav1,nav2,nav3,nav4,nav5])
        self.viewControllers=arr as? [UIViewController]
//        self.tabBar.backgroundColor=UIColor.clearColor()
//        let viewImg=UIView(frame:CGRectMake(0,0,UIScreen.mainScreen().bounds.width, 49))
//        viewImg.backgroundColor=UIColor(patternImage:UIImage(named:"tabbarBack.png")!)
//        self.tabBar.insertSubview(viewImg, atIndex:0)
//        self.tabBar.opaque=true
//        self.tabBar.tintColor=UIColor.applicationMainColor()
        
     }
}
