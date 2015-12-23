//
//  memberShakeRecord.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 用户摇一摇记录表（暂时存放用户放弃奖品时的信息）
class memberShakeRecord:Mappable {
    ///会员ID
    var memberId:Int?
    ///商品ID
    var goodsId:Int?
    ///供应商ID
    var supplierId:Int?
    ///放弃时间
    var giveUpTime:String?
    ///放弃原因
    var reason:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        memberId <- map["memberId"]
        goodsId <- map["goodsId"]
        supplierId <- map["supplierId"]
        giveUpTime <- map["giveUpTime"]
        reason <- map["reason"]
               
    }
}