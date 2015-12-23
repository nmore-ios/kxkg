//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 店铺与分销商或者物流配送商的中间表实体
class StoreAndSupplierEntity:Mappable {
    ///店铺id
    var storeId:Int?
    ///供应商id
    var supplierId:Int?
    ///分销商或者物流配送商
    var subOrLogisticSupplierId:Int?
    ///分销商或配送商名称，与数据库无关
    var supplierName:String?
   
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        storeId <- map["storeId"]
        supplierId <- map["supplierId"]
        subOrLogisticSupplierId <- map["subOrLogisticSupplierId"]
        supplierName <- map["supplierName"]
        
    }
}