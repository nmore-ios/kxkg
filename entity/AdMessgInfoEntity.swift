//
//  AdMessgInfoEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation
/// 显示在移动端首页，弹出的消息内容
class AdMessgInfoEntity:Mappable {
    ///主键ID
    var adMessgInfo:Int?;
    ///分站ID
    var substationId:Int?
    ///标题
    var messTitle:String?;
    ///内容
    var messContent:String?;
    ///添加人
    var memberId:Int?;
    ///状态1为不显示，2为显示
    var flag:Int?;
    ///添加时间
    var messAddTime:String?;
    ///会员名
    var memberName:String?;
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        adMessgInfo <- map["adMessgInfo"]
        substationId <- map["substationId"]
        messTitle <- map["messTitle"]
        messContent <- map["messContent"]
        memberId <- map["memberId"]
        flag <- map["flag"]
        messAddTime <- map["messAddTime"]
        memberName <- map["memberName"]
    }
}