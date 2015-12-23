//
//  OrderAndGoodsEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 订单商品表
class OrderAndGoodsEntity:Mappable {
    ///订单商品ID
    var orderGoodsId:Int?
    ///订单Id
    var orderId:Int?
    ///商品id
    var goodsId:Int?
    ///商品总数量
    var goodsSumCount:String?
    ///商品总价格
    var goodsSumMoney:String?
    ///商品名		与数据库无关
    var goodsInfoName:String?
    ///商品图片	与数据库无关
    var goodsInfoUrl:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        orderGoodsId <- map["orderGoodsId"]
        orderId <- map["orderId"]
        goodsId <- map["goodsId"]
        goodsSumCount <- map["goodsSumCount"]
        goodsSumMoney <- map["goodsSumMoney"]
        goodsInfoName <- map["goodsInfoName"]
        goodsInfoUrl <- map["goodsInfoUrl"]
              
    }
}