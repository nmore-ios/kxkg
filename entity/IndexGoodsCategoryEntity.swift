//
//  IndexGoodsCategoryEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 首页展示商品分类的Entity
class IndexGoodsCategoryEntity:Mappable {
    ///主键id
    var indexgoodscategoryId:Int?
    ///首页展示商品分类的id集合
    var goodscategoryIds:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        goodscategoryIds <- map["goodscategoryIds"]
        indexgoodscategoryId <- map["indexgoodscategoryId"]
               
    }
}