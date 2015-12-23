//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 摇奖机中的商品与可兑奖的店铺绑定
class ShakeGoodsForStoreEntity:Mappable {
    ///摇奖机的商品ID
    var supplierShakeGoodsId:Int?
    ///店铺ID
    var storeId:Int?
    ///供应商分配给店铺的商品可兑奖数量(总)
    var storeDistributionGoodsSum:Int?
    ///供应商分配给店铺的商品剩余数量(余)
    var storeSurplusGoodsSum:Int?
    ///默认为1，店铺确认后改为2即可正常兑奖，店铺取消直接删除此条信息
    var flag:Int?
    ///供应商将商品放入店铺的时间
    var storeAddTime:String?
    ///店铺某商品还能被摇中的数量
    var storeShakeGoodsSum:Int?
    ///谁添加的
    var userId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        supplierShakeGoodsId <- map["supplierShakeGoodsId"]
        storeId <- map["storeId"]
        storeDistributionGoodsSum <- map["storeDistributionGoodsSum"]
        storeSurplusGoodsSum <- map["storeSurplusGoodsSum"]
        flag <- map["flag"]
        storeAddTime <- map["storeAddTime"]
        storeShakeGoodsSum <- map["storeShakeGoodsSum"]
        userId <- map["userId"]
        
    }
}