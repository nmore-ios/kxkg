//
//  FactoryAndGoodsEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 厂商与供应商绑定关系的实体类
class FactoryAndGoodsEntity:Mappable {
    ///(商品Id)
    var goodsbasicinfoId:Int?;
    ///该商品的厂商Id
    var factoryId:Int?
    ///该商品的库存
    var stock:Int?;
    ///商品单位
    var ucode:String?;
    ///建议零售价（对消费者）
    var uoldPrice:String?;
    ///建议批发价格（对店铺采购）
    var uitemPrice:String?;
    ///单个供应价格（对供应商采购）
    var uprice:String?;
    ///单个商品重量
    var uweight:String?;
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
    var iweightFlag:Int?
    ///商品二级批发单位
    var scode:String?
    ///商品二级批发每单位的价格
    var sprice:String?
    /// 商品每二级批发单位数量(如每大箱多少小箱)
    var samount:Int?
    /// 商品每二级批发单位重量
    var sweight:String?
    /// 重量标识（1标识g,2标识kg）
    var sweightFlag:Int?
    ///商品访问量
    var traffic:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        goodsbasicinfoId <- map["goodsbasicinfoId"]
        factoryId <- map["factoryId"]
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
        traffic <- map["traffic"]
        
    }
}