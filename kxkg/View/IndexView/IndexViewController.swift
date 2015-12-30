//
//  IndexViewController.swift
//  kxkg
//
//  Created by penghao on 15/12/28.
//  Copyright © 2015年 penghao. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
///首页
class IndexViewController:UIViewController,ZWAdViewDelagate,BMKLocationServiceDelegate,BMKGeoCodeSearchDelegate{
    /// 接收县区id
    var countyId:Int?
    /// 缓存对象保存数据
    var userDefault=NSUserDefaults.standardUserDefaults()
    
    //定位信息
    var locService: BMKLocationService!
    //搜索结果
    var geoCode:BMKGeoCodeSearch!;
    //用经纬度反编译成地址信息。。
    var option:BMKReverseGeoCodeOption!;
    ///地址信息
    var address:AddressInformationEntity?;
     
    /// 可滑动容器
    var scrollView:UIScrollView?
     
    /// 幻灯片
    var adView:ZWAdView?
    /// 幻灯片数组
    var adDataArray=NSMutableArray()

     
     /**
     每次进入页面加载
     
     - parameter animated:
     */
    override func viewWillAppear(animated: Bool){
        super.viewWillAppear(animated);
        //设置导航栏透明效果
        self.navigationController!.navigationBar.lt_setBackgroundColor(UIColor.blackColor().colorWithAlphaComponent(0.2))
        //设置当前导航栏文字颜色
        self.navigationController!.navigationBar.tintColor=UIColor.whiteColor()
        if IJReachability.isConnectedToNetwork(){
            locService.delegate=self;
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.whiteColor()
        //初始化可滑动容器
        scrollView=UIScrollView(frame:self.view.bounds)
        scrollView!.contentSize=self.view.bounds.size
        scrollView!.backgroundColor=UIColor.whiteColor()
        self.view.addSubview(scrollView!)
        baiduLocation()
    }
    /**
     构建页面
     */
    func buildView(){
        self.adView=ZWAdView(frame:CGRectMake(0,0,boundsWidth,160))
        self.adView!.delegate=self
        self.adView!.adDataArray=self.adDataArray
        self.adView!.pageControlPosition=ZWPageControlPosition.BottomCenter/**设置圆点的位置*/
        self.adView!.hidePageControl=false/**设置圆点是否隐藏*/
        self.adView!.adAutoplay=true/**自动播放是否开启*/
        self.adView!.adPeriodTime=2/**时间间隔*/
        self.adView!.placeImageSource="def_nil";
        self.adView!.loadAdDataThenStart()
        self.scrollView!.addSubview(self.adView!)
    }
    /**
     百度定位
     */
    func baiduLocation(){
        //初始化地址信息类
        address=AddressInformationEntity();
        //初始化BMKLocationService
        locService = BMKLocationService()
        locService.desiredAccuracy=kCLLocationAccuracyBest
        //指定最小距离更新(米)，默认：kCLDistanceFilterNone
        locService.distanceFilter=kCLHeadingFilterNone
        //启动LocationService
        locService.startUserLocationService()
    }
    //定位失败会调用此方法
    func didFailToLocateUserWithError(error:NSError!){
        NSLog("百度地图定位失败")
        self.showNoticeErr("定位失败",viewHieght:90)
        //定位失败先删除原来保存在缓存中的地址信息
    }
    //实现相关delegate 处理位置信息更新
    //处理方向变更信息
    func didUpdateUserHeading(userLocation: BMKUserLocation!) {//预留在这
        //println(userLocation)
    }
    //处理位置坐标更新
    func didUpdateBMKUserLocation(userLocation: BMKUserLocation!) {
        if userLocation.location != nil{//判断地址信息是否获取到  获取到后立即停止定位
            //初始化
            geoCode=BMKGeoCodeSearch();
            geoCode.delegate=self;
            option=BMKReverseGeoCodeOption();
            //把经纬传进来
            option.reverseGeoPoint=userLocation.location.coordinate;
            //保存经纬度
            address!.latitudeAndLongitude="\(userLocation.location.coordinate.longitude)"+","+"\(userLocation.location.coordinate.latitude)";
            //异步函数，返回结果在BMKGeoCodeSearchDelegate的onGetReverseGeoCodeResult通知
            geoCode.reverseGeoCode(option);
            //立即停止定位
            locService.stopUserLocationService();
        }
    }
    //接收地址信息结果
    func onGetReverseGeoCodeResult(search:BMKGeoCodeSearch!,result:BMKReverseGeoCodeResult!, errorCode error: BMKSearchErrorCode){
        if error.rawValue == BMK_SEARCH_NO_ERROR.rawValue{//检索结果正常返回
            //拿到省市区信息
            address!.address=result.addressDetail.province+","+result.addressDetail.city+","+result.addressDetail.district;
            address!.city=result.addressDetail.city;
            address!.province=result.addressDetail.province;
            address!.county=result.addressDetail.district;
            NSLog("百度地图检索结果正常返回了结果%@",address!.address!)
            //调用获取县区id方法
            httpByCountyId(address!.address!)
        }
    }
    /**
     发送网络请求获取县区ID
     
     - parameter address:根据定位的地址信息
     */
    func httpByCountyId(address:String){
        Alamofire.request(.GET,URL+"queryCountyId.xhtml",parameters:["address":address,"IPhonePenghao":520])
            .responseJSON { response in
                if response.result.error != nil{
                   print(response.result.error)
                    
                }
                if response.result.value != nil{
                    let json=JSON(response.result.value!);
                    self.countyId=json.intValue
                    //数据加载完成发送通知 删除掉FirstPage页面
                NSNotificationCenter.defaultCenter().postNotificationName("notificationDeleteFirstPageView", object:nil)
                }
        }

    }

    // 广告栏点击
    func adView(adView: ZWAdView!, didDeselectAdAtNum num: Int) {
        
    }
}