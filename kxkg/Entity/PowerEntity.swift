//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 权限
class PowerEntity:Mappable {
    ///权限ID
    var powerId:Int?
    ///权限名称
    var powerName:String?
    ///权限的点击事件
    var powerEvent:String?
    ///权限的模块ID
    var powerModelId:Int?
    ///权限描叙
    var powerRemark:String?
    ///权限创建时间
    var powerCtime:String?
    ///1表示未删除 2表示已删除
    var flag:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        powerId <- map["powerId"]
        powerName <- map["powerName"]
        powerEvent <- map["powerEvent"]
        powerModelId <- map["powerModelId"]
        powerRemark <- map["powerRemark"]
        powerCtime <- map["powerCtime"]
        flag <- map["flag"]
               
    }
}