//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// sdfafda
class SupplierEntity:Mappable {
    ///供应商Id
    var supplierId:Int?
    ///供应商名称
    var supplierName:String?
    ///供应商名字
    var ownerName:String?
    ///供应商身份证号
    var ownerCard:String?
    ///供应商详细地址
    var address:String?
    ///供应商邮政编码
    var zipcode:String?
    ///联系电话
    var tel:String?
    ///所属等级
    var sgrade:String?
    ///供应商描述
    var applyRemark:String?
    ///状态 开启-1；关闭-2；
    var state:Int?
    ///供应商关闭原因
    var close_reason:String?
    ///供应商加入时间
    var addTime:String?
    ///供应商有效期至
    var endTime:String?
    ///认证 实名认证-1；实体供应商认证-2；
    var certification:Int?
    ///排序
    var sort_order:String?
    ///是否推荐 是-1；否-0；
    var recommended:Int?
    ///供应商主题
    var theme:String?
    ///供应商类别
    var supplier_banner:String?
    ///供应商LOGO
    var supplier_logo:String?
    ///供应商QQ
    var im_qq:String?
    ///供应商MSN
    var im_msn:String?
    ///是否允许团购(1，允许，2，不)
    var enable_groupbuy:Int?
    ///营业执照图片
    var charter:String?
    ///启用地图 (1，允许，2，不)
    var enable_map:Int?
    ///地图图标
    var map_icon:String?
    ///地图描述
    var map_disc:String?
    ///地图坐标
    var map_coordinate:String?
    ///供应商实景图
    var supplier_real_img:String?
    ///描述在图标的方向 向左-isleft;向右-isright
    var show_direction:String?
    ///省会Id
    var provinceId:Int?
    ///省会名
    var provinceText:String?
    ///城市Id
    var cityId:Int?
    ///城市名
    var cityText:String?
    ///区县名
    var countyText:String?
    ///区县Id
    var countyId:Int?
    ///供应商求路径
    var urlName:String?
    ///是否激活 (1，激活，2，未激活)
    var activation:Int?
    ///是否为分销商 (1，是，2，否)
    var subSupplier:Int?
    ///是否为物流配送商 (1，是，2，否)
    var logisticSupplier:Int?
    ///积分
    var integral:String?
    ///分站Id
    var substationId:Int?
   
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        supplierId <- map["supplierId"]
        supplierName <- map["supplierName"]
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
        sort_order <- map["sort_order"]
        recommended <- map["recommended"]
        theme <- map["theme"]
        supplier_banner <- map["supplier_banner"]
        supplier_logo <- map["supplier_logo"]
        im_qq <- map["im_qq"]
        im_msn <- map["im_msn"]
        enable_groupbuy <- map["enable_groupbuy"]
        charter <- map["charter"]
        enable_map <- map["enable_map"]
        map_icon <- map["map_icon"]
        map_disc <- map["map_disc"]
        map_coordinate <- map["map_coordinate"]
        supplier_real_img <- map["supplier_real_img"]
        show_direction <- map["show_direction"]
        provinceId <- map["provinceId"]
        provinceText <- map["provinceText"]
        cityId <- map["cityId"]
        cityText <- map["cityText"]
        countyText <- map["countyText"]
        countyId <- map["countyId"]
        urlName <- map["urlName"]
        activation <- map["activation"]
        subSupplier <- map["subSupplier"]
        logisticSupplier <- map["logisticSupplier"]
        integral <- map["integral"]
        substationId <- map["substationId"]
                
    }
}