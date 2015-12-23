//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 店铺摇奖机
class StoreShakeEntity:Mappable {
    ///主键
    var storeShakeId:Int?
    ///商品ID
    var goodsId:Int?
    ///商品名字
    var goodInfoName:String?
    var goodPic:String?
    ///分站ID
    var substationId:Int?
    ///提供数量
    var goodsNum:Int?
    ///提供还剩余数量
    var goodsSurplusNum:Int?
    var ctime:String?
    ///1,默认禁用。 2.开启
    var storeShakeState:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        storeShakeId <- map["storeShakeId"]
        goodsId <- map["goodsId"]
        goodInfoName <- map["goodInfoName"]
        goodPic <- map["goodPic"]
        substationId <- map["substationId"]
        goodsNum <- map["goodsNum"]
        goodsSurplusNum <- map["goodsSurplusNum"]
        ctime <- map["ctime"]
        storeShakeState <- map["storeShakeState"]
                
    }
}