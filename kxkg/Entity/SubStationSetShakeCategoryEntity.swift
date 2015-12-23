//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 分站设置的买某些分类的商品才能触发店铺摇奖
class SubStationSetShakeCategoryEntity:Mappable {
    ///分站ID
    var subStationId:Int?
    ///一级分类(关联商品分类的一个Id)
    var fcategoryId:Int?
    ///二级分类(关联商品分类的一个Id)
    var scategoryId:Int?
    /// 三级分类(关联商品分类的一个Id)
    var tcategoryId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        tcategoryId <- map["tcategoryId"]
        scategoryId <- map["scategoryId"]
        fcategoryId <- map["fcategoryId"]
        subStationId <- map["subStationId"]
        
    }
}