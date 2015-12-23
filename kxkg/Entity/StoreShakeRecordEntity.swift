//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 店铺摇奖记录
class StoreShakeRecordEntity:Mappable {
    ///店铺ID
    var storeId:Int?
    ///对应店铺摇奖的商品目录主键
    var storeShakeId:Int?
    ///分站ID
    var subStationId:Int?
    ///摇的时间
    var shakeCtime:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        shakeCtime <- map["shakeCtime"]
        subStationId <- map["subStationId"]
        storeShakeId <- map["storeShakeId"]
        storeId <- map["storeId"]
               
    }
}