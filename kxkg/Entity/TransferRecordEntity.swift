//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 赠送摇奖商品记录
class TransferRecordEntity:Mappable {
    ///赠送人会员ID
    var transferMemberId:Int?
    ///接收人会员ID
    var receivPersonMemberId:Int?
    ///赠送的商品ID
    var supplierShakeGoodsId:Int?
    ///赠送时间
    var time:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        time <- map["time"]
        supplierShakeGoodsId <- map["supplierShakeGoodsId"]
        receivPersonMemberId <- map["receivPersonMemberId"]
        transferMemberId <- map["transferMemberId"]
                
    }
}