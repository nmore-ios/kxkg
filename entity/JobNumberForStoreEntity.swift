//
//  JobNumberForStoreEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 员工账号与店铺绑定实体
class JobNumberForStoreEntity:Mappable {
    ///主键Id
    var jnsId:Int?
    ///员工ID(userId)
    var jobNumber:Int?
    ///店铺ID
    var storeId:Int?
    ///分站ID
    var substationId:Int?
    ///绑定时间
    var jnsTime:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        jnsId <- map["jnsId"]
        jobNumber <- map["jobNumber"]
        storeId <- map["storeId"]
        substationId <- map["substationId"]
        jnsTime <- map["jnsTime"]
        
    }
}