//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 店铺与商品中间表
class StoreAndGoodsEntity:Mappable {
    ///商品ID
    var Id:String?
    ///店铺ID
    var Id:String?
    ///单个商品批发价
    var Id:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        goodsbasicinfoId <- map["goodsbasicinfoId"]
        storeId <- map["storeId"]
        uitemPrice <- map["uitemPrice"]
        
    }
}