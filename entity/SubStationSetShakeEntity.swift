//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 分站设置店铺摇奖的细则
class SubStationSetShakeEntity:Mappable {
    ///主键
    var subStationSetShakeId:Int?
    var subStationId:Int?
    ///开始时间
    var storeShakeStartTime:String?
    ///结束时间
    var storeShakeEndTime:String?
    ///整数的金额，满这个数可以进行摇奖
    var numMoney:Int?
    ///1，开启活动；2，关闭
    var state:Int?
   
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        state <- map["state"]
        numMoney <- map["numMoney"]
        storeShakeEndTime <- map["storeShakeEndTime"]
        storeShakeStartTime <- map["storeShakeStartTime"]
        subStationId <- map["subStationId"]
        subStationSetShakeId <- map["subStationSetShakeId"]
               
    }
}