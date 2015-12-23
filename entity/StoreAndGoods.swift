//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 店铺与商品中间表
class StoreAndGoods:Mappable {
    ///商品ID
    var goodsbasicinfoId:Int?
    ///供应商ID
    var supplierId:Int?
    ///单个商品批发价
    var uitemPrice:String?
    ///商品名字
    var goodInfoName:String?
    ///商品首图
    var goodPic:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        goodsbasicinfoId <- map["goodsbasicinfoId"]
        supplierId <- map["supplierId"]
        uitemPrice <- map["uitemPrice"]
        goodInfoName <- map["goodInfoName"]
        goodPic <- map["goodPic"]
        
    }
}