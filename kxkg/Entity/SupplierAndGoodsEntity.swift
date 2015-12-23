//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// sdfafda
class SupplierAndGoodsEntity:Mappable {
    ///(商品Id)
    var goodsbasicinfoId:Int?
    ///该商品的供应商Id
    var supplierId:Int?
    ///该商品的库存
    var stock:Int?
    ///商品单位
    var ucode:String?
    ///商品原价（对消费者）
    var uoldPrice:String?
    ///单个商品零售价格
    var uitemPrice:String?
    ///单个商品批发价格（对店铺采购）
    var uprice:String?
    ///单个商品重量
    var uweight:String?
    ///重量的标识（1标识G,2标识KG）
    var uweightFlag:Int?
    ///商品批发单位
    var icode:String?
    ///商品的每单位批发价（如一箱等于多少钱）
    var iprice:String?
    ///商品每批发单位的数量（如一箱等于多少瓶）
    var iamount:Int?
    ///商品每批发单位重量（如每箱多少千克）
    var iweight:String?
    ///重量标识（1标识g,2标识kg）
    var iweightFlag:String?
    ///商品二级批发单位
    var scode:String?
    ///商品二级批发每单位的价格
    var sprice:String?
    ///商品每二级批发单位数量(如每大箱多少小箱)
    var samount:Int?
    ///商品每二级批发单位重量
    var sweight:String?
    ///重量标识（1标识g,2标识kg）
    var sweightFlag:Int?
    ///该商品是否被重新分配给了分销商或物流配送商1-分配了  2-未分配
    var isDistribution:Int?
    ///商品佣金
    var commission:String?
    ///商品访问量
    var traffic:Int?
    ///商品供应的省
    var provinceText:String?
    var provinceId:Int?
    var cityText:String?
    ///商品供应的城市
    var cityId:Int?
    ///是否下架1，已下架，2未下架
    var isShelves:Int?
    ///此商品状态，1为消费者可看到，2为店铺可看到，3为消费者和店铺都可以看到
    var isDisplayFlag:Int?
    ///商品促销信息
    var goodsDes:String?
   
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        goodsbasicinfoId <- map["goodsbasicinfoId"]
        supplierId <- map["supplierId"]
        stock <- map["stock"]
        ucode <- map["ucode"]
        uoldPrice <- map["uoldPrice"]
        uitemPrice <- map["uitemPrice"]
        uprice <- map["uprice"]
        uweight <- map["uweight"]
        uweightFlag <- map["uweightFlag"]
        icode <- map["icode"]
        iprice <- map["iprice"]
        iamount <- map["iamount"]
        iweight <- map["iweight"]
        iweightFlag <- map["iweightFlag"]
        scode <- map["scode"]
        sprice <- map["sprice"]
        samount <- map["samount"]
        sweight <- map["sweight"]
        sweightFlag <- map["sweightFlag"]
        isDistribution <- map["isDistribution"]
        commission <- map["commission"]
        traffic <- map["traffic"]
        provinceText <- map["provinceText"]
        provinceId <- map["provinceId"]
        cityText <- map["cityText"]
        cityId <- map["cityId"]
        isShelves <- map["isShelves"]
        isDisplayFlag <- map["isDisplayFlag"]
        goodsDes <- map["goodsDes"]
        
    }
}