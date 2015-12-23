//
//  CountyAndGoodsEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation
/// 供应商一经验范围（区县）实体
class CountyAndGoodsEntity:Mappable {
    ///供应商Id
    var supplierId:Int?
    ///县Id(供应商的经营范围)
    var countyId:Int?
    ///商品ID
    var goodsbasicinfoId:Int?
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        supplierId <- map["supplierId"]
        countyId <- map["countyId"]
        goodsbasicinfoId <- map["goodsbasicinfoId"]
        
    }
}