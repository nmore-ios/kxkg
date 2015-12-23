//
//  MemberDeviceVerificationEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 会员设备验证(防止不同设备登录同一账号)
class MemberDeviceVerificationEntity:Mappable {
    ///会员ID
    var memberId:Int?
    ///设备标识
    var deviceToken:String?
    ///设备名称
    var deviceName:String?
    ///设备登录时间
    var loginTime:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        memberId <- map["memberId"]
        deviceToken <- map["deviceToken"]
        deviceName <- map["deviceName"]
        loginTime <- map["loginTime"]
                
    }
}