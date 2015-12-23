//
//  MemberOrderAdvertisingEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 消费者下单页面的设置
class MemberOrderAdvertisingEntity:Mappable {
    ///主键ID
    var moId:Int?
    ///消费者下单页面显示的图片
    var moPic:String?
    ///显示的提示信息;例如：输入'快销快购',消费者界面显示的提示为'快销快购温馨提示您...'
    var moInfo:String?
    ///加价1
    var moPrice1:Int?
    ///加价2
    var moPrice2:Int?
    ///加价3
    var moPrice3:Int?
    ///分站ID
    var substationId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        moId <- map["moId"]
        moPic <- map["moPic"]
        moInfo <- map["moInfo"]
        moPrice1 <- map["moPrice1"]
        moPrice2 <- map["moPrice2"]
        moPrice3 <- map["moPrice3"]
        substationId <- map["substationId"]
              
    }
}