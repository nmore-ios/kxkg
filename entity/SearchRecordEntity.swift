//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 搜索记录
class SearchRecordEntity:Mappable {
    ///搜索记录主键id
    var searchrecordId:Int?
    ///搜索记录名称
    var searchrecordName:String?
    ///搜索记录次数
    var searchrecordCount:Int?
    ///搜索时间
    var searchrecordTime:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        searchrecordId <- map["searchrecordId"]
        searchrecordName <- map["searchrecordName"]
        searchrecordCount <- map["searchrecordCount"]
        searchrecordTime <- map["searchrecordTime"]
               
    }
}