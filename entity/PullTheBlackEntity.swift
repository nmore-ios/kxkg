//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 拉黑
class PullTheBlackEntity:Mappable {
    ///拉黑者id(memberId)
    var pullerId:Int?
    ///被拉黑者Id(memberId)
    var pulleredId:Int?
    ///拉黑的标识 1为供应商拉黑店铺 2为店铺拉黑供应商3店铺拉黑消费者4消费者拉黑店铺
    var pullType:Int?
    ///拉黑的原因
    var reason:String?
    ///拉黑时间
    var pullTime:String?
    ///取消拉黑时间
    var removePullTime:String?
    ///店铺唯一标识码
    var stoewFlagCode:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        pullerId <- map["pullerId"]
        pulleredId <- map["pulleredId"]
        pullType <- map["pullType"]
        reason <- map["reason"]
        pullTime <- map["pullTime"]
        removePullTime <- map["removePullTime"]
        stoewFlagCode <- map["stoewFlagCode"]
               
    }
}