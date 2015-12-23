//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 购买特价商品记录
class PreferntialRecordEntity:Mappable {
    ///供应商ID
    var supplierId:Int?
    ///商品ID
    var goodsId:Int?
    ///商品原价
    var oldPrice:String?
    ///特价
    var preferntialPrice:String?
    ///购买数量
    var goodsCount:String?
    ///购买时间
    var time:String?
    ///所属的订单
    var orderId:Int?
    ///分销商ID
    var subsupplierId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        supplierId <- map["supplierId"]
        goodsId <- map["goodsId"]
        oldPrice <- map["oldPrice"]
        preferntialPrice <- map["preferntialPrice"]
        goodsCount <- map["goodsCount"]
        time <- map["time"]
        orderId <- map["orderId"]
        subsupplierId <- map["subsupplierId"]
                
    }
}