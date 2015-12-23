//
//  AddressPushEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation
/// 此表用来保存用户的收货地址与范围内的店铺标识码
class AddressPushEntity:Mappable{
    ///收货地址Id
    var addressId:Int?
    ///店铺唯一标识码
    var storeFlagCode:String?
    ///当前收货地址对应的经纬度
    var addreddLatLong:String?
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        addressId <- map["addressId"]
        storeFlagCode <- map["storeFlagCode"]
        addreddLatLong <- map["addreddLatLong"]
        
    }
}