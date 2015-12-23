//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 根据在供应商进货数量的多少划分店铺等级的实体
class StoreLevelOfSupplierEntity:Mappable {
    ///供应商的会员Id
    var memberId:Int?
    ///进货数量上线
    var online:String?
    ///进货数量下线
    var offline:String?
    ///图标Url
    var iconUrl:String?
    ///所属等级
    var level:Int?
    ///所属等级店铺的数量（与数据库操作无关）
    var levelCount:Int?
    
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        memberId <- map["memberId"]
        online <- map["online"]
        offline <- map["offline"]
        iconUrl <- map["iconUrl"]
        level <- map["level"]
        levelCount <- map["levelCount"]
        
    }
}