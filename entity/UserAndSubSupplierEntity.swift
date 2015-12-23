//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 管理员绑定配送商
class UserAndSubSupplierEntity:Mappable {
    ///管理员ID
    var userId:Int?
    ///供应商ID
    var supplierId:Int?
    ///配送商Id
    var subSupplierId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        subSupplierId <- map["subSupplierId"]
        supplierId <- map["supplierId"]
        userId <- map["userId"]
               
    }
}