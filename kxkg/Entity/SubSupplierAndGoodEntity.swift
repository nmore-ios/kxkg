//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 分销商和商品中间表
class SubSupplierAndGoodEntity:Mappable {
    ///分销商或者物流配送商的Id
    var subSupplier:Int?
    ///商品Id
    var goodId:Int?
    ///供应商Id
    var supplierId:Int?
    ///配送商商品价格
    var subSupplierUprice:String?
    ///1为可见，2为下架不可见。默认1可见
    var flag:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        subSupplier <- map["subSupplier"]
        goodId <- map["goodId"]
        supplierId <- map["supplierId"]
        subSupplierUprice <- map["subSupplierUprice"]
        flag <- map["flag"]
       
        
    }
}