//
//  IndexRecommendedEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// sdfafda
class IndexRecommendedEntity:Mappable {
    ///主键ID
    var IndexRecommendedId:Int?
    ///图片
    var IndexRecommendedPicture:String?
    ///标题
    var IndexRecommendedTitle:String?
    ///上传时间
    var uTime:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        IndexRecommendedId <- map["IndexRecommendedId"]
        IndexRecommendedPicture <- map["IndexRecommendedPicture"]
        IndexRecommendedTitle <- map["IndexRecommendedTitle"]
        uTime <- map["uTime"]
               
    }
}