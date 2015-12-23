//
//  DefaultAllocationSubSupplierEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//


import Foundation
/// 分站注册店铺时默认绑定的配送商
class DefaultAllocationSubSupplierEntity:Mappable {
    ///分站ID
    var substationId:Int?
    ///配送商ID
    var subSupplierId:Int?
    ///供应商ID
    var supplierId:Int?
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        substationId <- map["substationId"]
        subSupplierId <- map["subSupplierId"]
        supplierId <- map["supplierId"]
        
    }
}