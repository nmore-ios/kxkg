//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 交易记录的实体类
class TransactionrecordsEntity:Mappable {
    ///买家ID
    var buyerId:Int?
    ///卖家ID
    var sellerId:Int?
    ///商品ID
    var goodsId:Int?
    ///商品名称
    var goodsName:String?
    ///商品分类
    var goodsCategory:String?
    ///商品数量
    var totalGoods:String?
    ///商品总金额
    var totalMoney:String?
    ///商品佣金
    var commission:String?
    ///交易时间
    var submitTime:String?
    ///保存时间
    var saveTime:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        saveTime <- map["saveTime"]
        submitTime <- map["submitTime"]
        commission <- map["commission"]
        totalMoney <- map["totalMoney"]
        totalGoods <- map["totalGoods"]
        goodsCategory <- map["goodsCategory"]
        goodsName <- map["goodsName"]
        goodsId <- map["goodsId"]
        sellerId <- map["sellerId"]
        buyerId <- map["buyerId"]
        
    }
}