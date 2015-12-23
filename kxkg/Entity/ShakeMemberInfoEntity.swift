//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 摇中商品的会员及商品信息
class ShakeMemberInfoEntity:Mappable {
    ///主键ID
    var shakeMemberInfoId:Int?
    ///会员ID
    var memberId:Int?
    ///会员名
    var memberName:String?
    ///关联SupplierShakeGoodsEntity中的主键ID
    var supplierShakeGoodsId:Int?
    ///摇一摇状态，1为摇中，2为放弃，3为领取，4为兑奖,5为已过期，6已删除
    var shakeFlag:Int?
    ///店铺ID
    var storeId:Int?
    ///店铺名称
    var storeName:String?
    ///中奖时间(用户摇中的时间)
    var winningTime:String?
    ///放弃时间
    var giveUpTime:String?
    ///领取时间(用户确认不放弃此商品时)
    var receiveTime:String?
    ///兑奖时间(用户去店铺成功领取到奖品的时间)
    var awardingTime:String?
    ///此店铺ID是用户摇中奖后暂时存放的，用户附近某店铺可摇数量-1
    var winningStoreId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        shakeMemberInfoId <- map["shakeMemberInfoId"]
        memberId <- map["memberId"]
        memberName <- map["memberName"]
        supplierShakeGoodsId <- map["supplierShakeGoodsId"]
        shakeFlag <- map["shakeFlag"]
        storeId <- map["storeId"]
        storeName <- map["storeName"]
        winningTime <- map["winningTime"]
        giveUpTime <- map["giveUpTime"]
        receiveTime <- map["receiveTime"]
        awardingTime <- map["awardingTime"]
        winningStoreId <- map["winningStoreId"]
                
    }
}