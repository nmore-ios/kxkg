//
//  AgentEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation
/// 供应商代理的实体类
class AgentEntity:Mappable {
    ///厂商Id
    var factoryId:Int?;
    ///供应商Id
    var supplierId:Int?
    ///要代理的商品Id
    var goodsbasicinfoId:Int?;
    ///要代理的状态1-审核中2-审核失败3-审核成功
    var state:Int?;
    ///工厂名字
    var factoryName:String?;
    ///工厂电话
    var ftel:String?;
    ///供应商电话
    var stel:String?;
    ///供应商名字
    var supplierName:String?;
    ///商品名字
    var goodInfoName:String?
    ///商品展示首图（即封面图片）
    var goodPic:String?
    ///城市Id
    var cityId:Int?
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        factoryId <- map["factoryId"]
        supplierId <- map["supplierId"]
        goodsbasicinfoId <- map["goodsbasicinfoId"]
        state <- map["state"]
        factoryName <- map["factoryName"]
        ftel <- map["ftel"]
        stel <- map["stel"]
        supplierName <- map["supplierName"]
        goodInfoName <- map["goodInfoName"]
        goodPic <- map["goodPic"]
        cityId <- map["cityId"]
    }
}