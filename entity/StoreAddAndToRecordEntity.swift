//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 添加店铺或审核的人
class StoreAddAndToRecordEntity:Mappable {
    ///添加或审核人ID
    var Id:Int?
    ///添加或审核人名称
    var Id:String?
    ///店铺ID
    var Id:Int?
    ///1为添加，2为审核
    var Id:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        addId <- map["addId"]
        addName <- map["addName"]
        storeId <- map["storeId"]
        flag <- map["flag"]
        
    }
}