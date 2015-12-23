//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 店铺表
class StoreEntity:Mappable {
    ///店铺Id
    var storeId:Int?
    ///店铺名称
    var storeName:String?
    ///店主名字
    var ownerName:String?
    /// 店主身份证号
    var ownerCard:String?
    /// 详细地址
    var address:String?
    ///邮政编码
    var zipcode:String?
    /// 联系电话
    var tel:String?
    ///所属等级
    var sgrade:String?
    ///店铺描述
    var applyRemark:String?
    ///状态 开启-1；关闭-2
    var state:Int?
    ///店铺关闭原因
    var close_reason:String?
    ///店铺加入时间
    var addTime:String?
    ///有效期至
    var endTime:String?
    ///认证 实名认证-1；实体店铺认证-2；
    var certification:Int?
    ///营业执照图片
    var charter:String?
    ///排序
    var sort_order:String?
    ///是否推荐 是-1；否-0
    var recommended:Int?
    ///店铺主题
    var theme:String?
    /// 店铺类别
    var store_banner:String?
    ///店铺LOGO
    var store_logo:String?
    var im_qq:String?
    var im_msn:String?
    ///是否允许团购(1，允许，2，不)
    var enable_groupbuy:Int?
    ///启用地图 (1，允许，2，不)
    var enable_map:Int?
    ///地图图标
    var map_icon:String?
    /// 地图描述
    var map_disc:String?
    ///地图坐标
    var map_coordinate:String?
    ///店铺实景图
    var store_real_img:String?
    ///描述在图标的方向 向左-isleft;向右-isright
    var show_direction:String?
    ///省会Id
    var provinceId:String?
    /// 省会名
    var provinceText:String?
    ///城市Id
    var cityId:Int?
    ///城市名
    var cityText:String?
    ///县/区Id
    var countyId:Int?
    ///县/区名
    var countyText:String?
    ///商铺请求路径
    var urlName:String?
    ///店铺的唯一标识码
    var stoewFlagCode:String?
    ///分站Id
    var substationId:Int?
    ///分站名，与数据库无关
    var substationName:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        storeId <- map["storeId"]
        storeName <- map["storeName"]
        ownerName <- map["ownerName"]
        ownerCard <- map["ownerCard"]
        address <- map["address"]
        zipcode <- map["zipcode"]
        tel <- map["tel"]
        sgrade <- map["sgrade"]
        applyRemark <- map["applyRemark"]
        state <- map["state"]
        close_reason <- map["close_reason"]
        addTime <- map["addTime"]
        endTime <- map["endTime"]
        certification <- map["certification"]
        charter <- map["charter"]
        sort_order <- map["sort_order"]
        recommended <- map["recommended"]
        theme <- map["theme"]
        store_banner <- map["store_banner"]
        store_logo <- map["store_logo"]
        im_qq <- map["im_qq"]
        im_msn <- map["im_msn"]
        enable_groupbuy <- map["enable_groupbuy"]
        enable_map <- map["enable_map"]
        map_icon <- map["map_icon"]
        map_disc <- map["map_disc"]
        map_coordinate <- map["map_coordinate"]
        store_real_img <- map["store_real_img"]
        show_direction <- map["show_direction"]
        provinceId <- map["provinceId"]
        provinceText <- map["provinceText"]
        cityId <- map["cityId"]
        cityText <- map["cityText"]
        countyId <- map["countyId"]
        countyText <- map["countyText"]
        urlName <- map["urlName"]
        stoewFlagCode <- map["stoewFlagCode"]
        substationId <- map["substationId"]
        substationName <- map["substationName"]
               
    }
}