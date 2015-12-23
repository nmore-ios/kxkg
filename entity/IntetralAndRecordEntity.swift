//
//  IntetralAndRecordEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 充值
class IntetralAndRecordEntity:Mappable {
    ///充值者
    var userId:Int?
    ///分站id
    var substationId:Int?
    ///供应商id
    var supplierId:Int?
    ///充值之前的
    var oldIntegral:String?
    ///充值之后的余额
    var newIntegral:String?
    ///此次充值的额度
    var integral:String?
    ///充值时间
    var submitTime:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        userId <- map["userId"]
        substationId <- map["substationId"]
        supplierId <- map["supplierId"]
        oldIntegral <- map["oldIntegral"]
        newIntegral <- map["newIntegral"]
        integral <- map["integral"]
        submitTime <- map["submitTime"]
        
    }
}