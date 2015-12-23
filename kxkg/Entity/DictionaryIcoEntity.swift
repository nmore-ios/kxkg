//
//  DictionaryIcoEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation
/// 图片字典表
class DictionaryIcoEntity:Mappable {
    ///主键ID
    var dictionaryicoId:Int?
    ///图片的路径
    var icoUrl:String?
    ///图片的标识  1-店铺，2-供应商
    var identifyImg:Int?
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        dictionaryicoId <- map["dictionaryicoId"]
        icoUrl <- map["icoUrl"]
        identifyImg <- map["identifyImg"]
        
    }
}