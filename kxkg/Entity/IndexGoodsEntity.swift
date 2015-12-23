//
//  IndexGoodsEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 首页商品数据实体类
class IndexGoodsEntity:Mappable {
    ///主键ID
    var indexGoodsId:Int?
    ///商品ID
    var goodId:Int?
    ///供应商ID
    var supplierId:Int?
    ///分站ID
    var substationId:Int?
    ///默认1，app首页热门商品； 2下架
    var flag:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        indexGoodsId <- map["indexGoodsId"]
        goodId <- map["goodId"]
        supplierId <- map["supplierId"]
        substationId <- map["substationId"]
        flag <- map["flag"]
               
    }
}