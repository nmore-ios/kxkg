//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 会员实体
class UserEntity:Mappable {
    ///会员Id
    var userID:Int?
    ///会员名
    var userName:String?
    ///会员帐号
    var userAccount:String?
    ///会员密码
    var userPossword:String?
    ///部门id,关联部门表ID
    var departmentId:String?
    ///职务id(关联职务表)
    var positionId:String?
    ///创建时间
    var ctime:String?
    ///是否删除（1 未删除  2  删除）
    var flag:Int?
    ///所属分站ID
    var substationId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        substationId <- map["substationId"]
        flag <- map["flag"]
        ctime <- map["ctime"]
        positionId <- map["positionId"]
        departmentId <- map["departmentId"]
        userPossword <- map["userPossword"]
        userAccount <- map["userAccount"]
        userName <- map["userName"]
        userID <- map["userID"]
               
    }
}