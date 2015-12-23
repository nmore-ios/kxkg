//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 供应商与在分站的佣金
class SupplierAndIntegralEntity:Mappable {
    ///
    var supplierId:Int?
    ///
    var substationId:Int?
    ///
    var integral:String?
    ///
    var substationName:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        substationName <- map["substationName"]
        integral <- map["integral"]
        substationId <- map["substationId"]
        supplierId <- map["supplierId"]
                
    }
}