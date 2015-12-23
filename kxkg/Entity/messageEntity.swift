//
//  messageEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 后台管理首页聊天消息
class messageEntity:Mappable {
    ///信息Id
    var messageId:Int?
    ///发送时间
    var messageTime:String?
    ///分站ID
    var substationId:Int?
    ///管理员ID
    var userId:Int?
    ///发送的消息
    var message:String?
    ///管理员名称
    var userName:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        messageId <- map["messageId"]
        messageTime <- map["messageTime"]
        substationId <- map["substationId"]
        userId <- map["userId"]
        message <- map["message"]
        userName <- map["userName"]
              
    }
}