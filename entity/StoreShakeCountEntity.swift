//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 店铺可摇的数量
class StoreShakeCountEntity:Mappable {
    ///店铺ID
    var storeId:Int?
    ///可摇的总数
    var count:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        count <- map["count"]
        storeId <- map["storeId"]
               
    }
}