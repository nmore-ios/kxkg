//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// sdfafda
class ShoppingCarEntity:Mappable {
    ///会员Id
    var memberId:Int?
    ///商品Id
    var goodId:Int?
    ///供应商Id
    var supplierId:Int?
    ///分销商Id
    var subSupplierId:Int?
    ///购买数量
    var goodsCount:Int?
    ///是否特价商品     1特价，2非特价
    var flag:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        memberId <- map["memberId"]
        goodId <- map["goodId"]
        supplierId <- map["supplierId"]
        subSupplierId <- map["subSupplierId"]
        goodsCount <- map["goodsCount"]
        flag <- map["flag"]
        
    }
}