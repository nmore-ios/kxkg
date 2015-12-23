//
//  AdviceEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//


import Foundation
/// 投诉与建议
class AdviceEntity:Mappable {
    ///主键ID
    var adviceId:Int?;
    ///投诉建议内容
    var adviceContent:String?
    ///投诉建议人
    var adviceMemberId:Int?;
    ///投诉建议时间
    var adviceTime:String?;
    ///关联的订单ID
    var orderId:Int?;
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        adviceId <- map["adviceId"]
        adviceContent <- map["adviceContent"]
        adviceMemberId <- map["adviceMemberId"]
        adviceTime <- map["adviceTime"]
        orderId <- map["orderId"]
        
    }
}