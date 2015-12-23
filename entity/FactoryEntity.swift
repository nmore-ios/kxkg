//
//  FactoryEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 工厂实体类
class FactoryEntity:Mappable {
    ///工厂Id
    var factoryId:Int?;
    ///工厂名称
    var factoryName:String?;
    ///工厂厂主名字
    var ownerName:String?;
    ///工厂身份证号
    var ownerCard:String?;
    ///工厂详细地址
    var address:String?;
    ///工厂邮政编码
    var zipcode:String?;
    ///联系电话
    var tel:String?;
    ///所属等级
    var grade:String?;
    ///工厂描述
    var applyRemark:String?;
    ///状态 开启-1；关闭-2
    var state:Int?;
    ///工厂加入时间
    var addTime:String?;
    ///工厂有效期至
    var endTime:String?;
    ///认证 实名认证-1；实体供应商认证-2；
    var certification:Int?;
    ///排序
    var sort_order:String?;
    ///是否推荐 是-1；否-0
    var recommended:Int?;
    ///工厂类别
    var factory_banner:String?;
    ///工厂LOGO
    var factory_logo:String?;
    ///工厂QQ
    var im_qq:String?;
    /// 工厂MSN
    var im_msn:String?;
    ///营业执照图片
    var charter:String?;
    ///启用地 图 (1，允许，2，不)
    var enable_map:Int?;
    ///地图图标
    var map_icon:String?;
    ///地图描述
    var map_disc:String?;
    ///地图坐标
    var map_coordinate:String?;
    ///工厂实景图
    var factory_real_img:String?;
    ///描述在图标的方向 向左-isleft;向右-isright
    var show_direction:String?;
    ///省会Id
    var provinceId:Int?;
    ///省会名
    var provinceText:String?
    ///城市Id
    var cityId:Int?;
    ///城市名
    var cityText:String?;
    ///区县名
    var countyText:String?;
    ///区县Id
    var countyId:Int?;
    ///工厂求路径
    var urlName:String?;
    
    
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        factoryId <- map["factoryId"]
        factoryName <- map["factoryName"]
        ownerName <- map["ownerName"]
        ownerCard <- map["ownerCard"]
        address <- map["address"]
        zipcode <- map["zipcode"]
        tel <- map["tel"]
        grade <- map["grade"]
        applyRemark <- map["applyRemark"]
        state <- map["state"]
        addTime <- map["addTime"]
        endTime <- map["endTime"]
        certification <- map["certification"]
        sort_order <- map["sort_order"]
        recommended <- map["recommended"]
        factory_banner <- map["factory_banner"]
        factory_logo <- map["factory_logo"]
        im_qq <- map["im_qq"]
        im_msn <- map["im_msn"]
        charter <- map["charter"]
        enable_map <- map["enable_map"]
        map_icon <- map["map_icon"]
        map_disc <- map["map_disc"]
        map_coordinate <- map["map_coordinate"]
        factory_real_img <- map["factory_real_img"]
        show_direction <- map["show_direction"]
        provinceId <- map["provinceId"]
        provinceText <- map["provinceText"]
        cityId <- map["cityId"]
        cityText <- map["cityText"]
        countyText <- map["countyText"]
        countyId <- map["countyId"]
        urlName <- map["urlName"]
    }
}