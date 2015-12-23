//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 会员收货地址
class ShippAddressEntity:Mappable {
    ///会员主键
    var shippAddressId:Int?
    ///省份
    var province:String?
    ///市
    var city:String?
    ///县
    var county:String?
    ///详细地址
    var detailAddress:String?
    ///收货人姓名
    var shippName:String?
    ///手机号码
    var phoneNumber:String?
    ///电话号码
    var telephoneNumber:String?
    ///电话号码--区号
    var areaCode:String?
    ///会员ID
    var memberId:Int?
    ///是否为默认地址，1是，2否
    var defaultFlag:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        shippAddressId <- map["shippAddressId"]
        province <- map["province"]
        city <- map["city"]
        county <- map["county"]
        detailAddress <- map["detailAddress"]
        shippName <- map["shippName"]
        phoneNumber <- map["phoneNumber"]
        telephoneNumber <- map["telephoneNumber"]
        areaCode <- map["areaCode"]
        memberId <- map["memberId"]
        defaultFlag <- map["defaultFlag"]
        
    }
}