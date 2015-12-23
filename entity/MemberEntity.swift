//
//  MemberEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 会员实体
class MemberEntity:Mappable {
    ///用户Id
    var memberId:Int?
    ///用户名
    var memberName:String?
    ///邮箱
    var email:String?
    ///密码
    var password:String?
    ///真实姓名
    var realName:String?
    ///性别(1,男2,女)
    var gender:String?
    ///生日
    var birthday:String?
    ///电话
    var phoneTel:String?
    ///手机
    var phone_mob:String?
    ///注册时间
    var regtime:String?
    ///最后登录时间
    var lastLogin:String?
    ///最后登录IP
    var lastIp:String?
    ///照片
    var portrait:String?
    ///是否激活(1，激活，2未激活)
    var activation:String?
    /// 积分
    var balance:String?
    ///推荐人Id
    var referralid:Int?
    /// 店铺Id
    var storeId:Int?
    ///供应商Id
    var supplierId:Int?
    ///厂家Id
    var factoryId:Int?
    ///店铺的审核状态(1,未通过，2，通过，3审核中（默认）)
    var storestate:String?
    ///商家信用度
    var creditLine:String?
    ///审核状态(1,未通过，2，通过，3审核中（默认）)
    var state:Int?
    ///是否为分销商或者物流配送商的标识，与数据库无关，1为是，2为不是
    var isSubOrLogisticSupplier:Int?
    ///会员二维码
    var qrcode:String?
    ///绑定推荐人的时间
    var bindingRecommendedTime:String?
    ///会员身份，是店铺显示店铺名称，是供应商显示供应商名称，与数据库无关
    var memberIdInfo:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        memberId <- map["memberId"]
        memberName <- map["memberName"]
        email <- map["email"]
        password <- map["password"]
        realName <- map["realName"]
        gender <- map["gender"]
        birthday <- map["birthday"]
        phoneTel <- map["phoneTel"]
        phone_mob <- map["phone_mob"]
        regtime <- map["regtime"]
        lastLogin <- map["lastLogin"]
        lastIp <- map["lastIp"]
        portrait <- map["portrait"]
        activation <- map["activation"]
        balance <- map["balance"]
        referralid <- map["referralid"]
        storeId <- map["storeId"]
        supplierId <- map["supplierId"]
        factoryId <- map["factoryId"]
        storestate <- map["storestate"]
        creditLine <- map["creditLine"]
        state <- map["state"]
        isSubOrLogisticSupplier <- map["isSubOrLogisticSupplier"]
        qrcode <- map["qrcode"]
        bindingRecommendedTime <- map["bindingRecommendedTime"]
        memberIdInfo <- map["memberIdInfo"]
        
        
    }
}