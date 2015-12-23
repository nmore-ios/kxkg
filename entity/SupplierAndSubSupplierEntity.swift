//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 供应商指定分销商中间表
class SupplierAndSubSupplierEntity:Mappable {
    ///供应商Id
    var supplierId:Int?
    ///分销商Id或者是物流配送商Id
    var subSupplier:Int?
    ///分销商和物流配送商的标示 1表示分销商 2表示物流配送商
    var typeFlag:Int?
    
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        typeFlag <- map["typeFlag"]
        subSupplier <- map["subSupplier"]
        supplierId <- map["supplierId"]
        
    }
}