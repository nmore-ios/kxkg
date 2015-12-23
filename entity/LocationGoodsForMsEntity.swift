//
//  LocationGoodsForMsEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 定位移动店铺的出货店铺
class LocationGoodsForMsEntity:Mappable {
    ///订单ID
    var orderId:Int?
    ///店铺ID
    var stoerId:Int?
    ///移动店铺登录的userId
    var msUserId:Int?
    ///移动店铺登录的userId
    var flag:Int?
    ///店铺是否确认，1为发送通知，2为确认
   
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        orderId <- map["orderId"]
        stoerId <- map["stoerId"]
        msUserId <- map["msUserId"]
        flag <- map["flag"]
        
    }
}