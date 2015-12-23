//
//  MemberPreferntialrecordEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 会员购买特价商品的记录表
class MemberPreferntialrecordEntity:Mappable {
    ///会员ID
    var memberId:Int?
    ///已经购买的数量
    var goodsCount:Int?
    ///商品ID
    var goodsId:Int?
    ///特价Id
    var preferentialId:Int?
    
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        memberId <- map["memberId"]
        goodsCount <- map["goodsCount"]
        goodsId <- map["goodsId"]
        preferentialId <- map["preferentialId"]
        
    }
}