//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 全国地区
class RegionEntity:Mappable {
    ///地区id
    var regionId:Int?
    ///地区名
    var regionName:String?
    ///父id
    var pid:Int?
    ///排序号
    var regionDesc:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        regionId <- map["regionId"]
        regionName <- map["regionName"]
        pid <- map["pid"]
        regionDesc <- map["regionDesc"]
                
    }
}