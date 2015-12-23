//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 订单与店铺绑定（店铺能看到的未被抢的订单）, 在订单被抢后，删除关于此订单的信息
class OrderPushEntity:Mappable {
    ///订单ID
    var orderId:Int?
    ///店铺唯一标识码
    var storeFlagCode:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        orderId <- map["orderId"]
        storeFlagCode <- map["storeFlagCode"]
             
    }
}