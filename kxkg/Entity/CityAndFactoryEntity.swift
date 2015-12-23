//
//  CityAndFactoryEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//


import Foundation
/// 厂商招商范围
class CityAndFactoryEntity:Mappable {
    ///厂家Id
    var factoryId:Int?
    ///市Id(厂家的经营范围)
    var cityId:Int?
    ///当前收货地址对应的经纬度
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        factoryId <- map["factoryId"]
        cityId <- map["cityId"]
        
    }
}