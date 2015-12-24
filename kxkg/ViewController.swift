//
//  ViewController.swift
//  kxkg
//
//  Created by penghao on 15/12/21.
//  Copyright © 2015年 penghao. All rights reserved.
//

import UIKit
class ViewController: UIViewController,BMKMapViewDelegate,BMKLocationServiceDelegate,BMKGeoCodeSearchDelegate{
    var bmkMapView:BMKMapView?
    //定位信息
    var locService: BMKLocationService!
    //搜索结果
    var geoCode:BMKGeoCodeSearch!;
    //用经纬度反编译成地址信息。。
    var option:BMKReverseGeoCodeOption!;
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated);
        locService.delegate=self;
        
    }
    override func viewDidLoad() {
        super.viewDidLoad();
        self.title="附近(~2000米范围)可兑奖店铺"
        self.view.backgroundColor=UIColor.whiteColor();
        //初始化BMKLocationService
        locService = BMKLocationService()
        locService.desiredAccuracy=kCLLocationAccuracyBest
        //指定最小距离更新(米)，默认：kCLDistanceFilterNone
        locService.distanceFilter=kCLHeadingFilterNone
        //启动LocationService
        locService.startUserLocationService()
    }
    //处理位置坐标更新
    func didUpdateBMKUserLocation(userLocation: BMKUserLocation!) {
        if userLocation.location != nil{//判断地址信息是否获取到  获取
            geoCode=BMKGeoCodeSearch();
            geoCode.delegate=self;
            option=BMKReverseGeoCodeOption();
            //把经纬传进来
            option.reverseGeoPoint=userLocation.location.coordinate;
            //异步函数，返回结果在BMKGeoCodeSearchDelegate的onGetReverseGeoCodeResult通知
            geoCode.reverseGeoCode(option);
            //立即停止定位
            locService.stopUserLocationService();
            //设置位置
            bmkMapView=BMKMapView(frame:self.view.frame);
            //添加委托
            bmkMapView!.delegate=self;
            bmkMapView!.showsUserLocation=true
            self.view.addSubview(bmkMapView!);
            //添加标题
            let annotation:BMKPointAnnotation=BMKPointAnnotation();
            annotation.coordinate=userLocation.location.coordinate;
            annotation.title="我的位置"
            bmkMapView!.addAnnotation(annotation);
            bmkMapView!.setCenterCoordinate(userLocation.location.coordinate, animated: true)
            //设置显示尺寸
            bmkMapView!.zoomLevel=16;

            
            
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

