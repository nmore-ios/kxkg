//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 权限分配
class PowerDistributionEntity:Mappable {
    ///权限id
    var powerId:Int?
    ///职位id
    var positionId:Int?
    ///分站Id
    var subStationId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        powerId <- map["powerId"]
        positionId <- map["positionId"]
        subStationId <- map["subStationId"]
        
    }
}