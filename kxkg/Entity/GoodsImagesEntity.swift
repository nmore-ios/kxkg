//
//  GoodsImagesEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 商品图片表实体
class GoodsImagesEntity:Mappable {
    ///商品图片Id
    var goodsImagesId:Int?
    ///商品的Id
    var goodInfoId:Int?
    ///商品图片的URL
    var goodsImagesUrl:String?
    ///商品图片的上传时间
    var cTime:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        goodsImagesId <- map["goodsImagesId"]
        goodInfoId <- map["goodInfoId"]
        goodsImagesUrl <- map["goodsImagesUrl"]
        cTime <- map["cTime"]
               
    }
}