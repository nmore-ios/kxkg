//
//  GoodsBasicInfoEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation
/// 商品基本信息
class GoodsBasicInfoEntity:Mappable {
    ///主键(商品Id)
    var goodsbasicinfoId:Int?
    ///商品名字
    var goodInfoName:String?
    ///商品条码
    var goodInfoCode:String?
    ///一级分类(关联商品分类的一个Id)
    var fcategoryId:Int?
    ///二级分类(关联商品分类的一个Id)
    var scategoryId:Int?
    ///三级分类(关联商品分类的一个Id)
    var tcategoryId:Int?
    ///商品展示首图（即封面图片）
    var goodPic:String?
    ///商品上传时间
    var ctime:String?
    ///商品描述富文本描述
    var remark:String?
    ///商品审核状态
    var goodsbasicinfoFlag:String?
    ///商品的出产省份
    var provinceText:String?
    ///商品的出产省份Id
    var provinceId:Int?
    ///商品的出产城市
    var cityText:String?
    ///商品的出产城市Id
    var cityId:Int?
    ///商品的出产区县
    var countyText:String?
    ///商品的出产区县Id
    var countyId:Int?
    ///是否推荐商品,默认1为非推荐，如果是推荐商品，为2
    var whetherRecommendGoods:Int?
    ///是否热门商品，默认1为非热门，如果是热门商品，为2
    var hotGoods:Int?
  
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        goodsbasicinfoId <- map["goodsbasicinfoId"]
        goodInfoName <- map["goodInfoName"]
        goodInfoCode <- map["goodInfoCode"]
        fcategoryId <- map["fcategoryId"]
        scategoryId <- map["scategoryId"]
        tcategoryId <- map["tcategoryId"]
        goodPic <- map["goodPic"]
        ctime <- map["ctime"]
        remark <- map["remark"]
        goodsbasicinfoFlag <- map["goodsbasicinfoFlag"]
        provinceText <- map["provinceText"]
        provinceId <- map["provinceId"]
        cityText <- map["cityText"]
        cityId <- map["cityId"]
        countyText <- map["countyText"]
        countyId <- map["countyId"]
        whetherRecommendGoods <- map["whetherRecommendGoods"]
        hotGoods <- map["hotGoods"]
        
        
    }
}