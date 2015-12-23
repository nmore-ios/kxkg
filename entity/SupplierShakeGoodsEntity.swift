//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 供应商提供的摇一摇商品信息
class SupplierShakeGoodsEntity:Mappable {
    ///主键ID
    var supplierShakeGoodsId:Int?
    ///商品ID
    var goodsId:Int?
    ///商品条形码
    var goodInfoCode:String?
    ///商品名称
    var goodsName:String?
    ///供应商ID
    var supplierId:Int?
    ///供应商名称
    var supplierName:String?
    ///供应商提供的可以摇的商品数量
    var supplierGoddsCount:Int?
    ///供应商提供的可以摇的剩余商品数量
    var surplusCount:Int?
    ///提供时间
    var provideTime:String?
    ///商品图片
    var goodsPic:String?
    ///是否审核通过。默认1，审核通过为2;
    var flag:Int?
    ///所属分站
    var substationId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        substationId <- map["substationId"]
        flag <- map["flag"]
        goodsPic <- map["goodsPic"]
        provideTime <- map["provideTime"]
        surplusCount <- map["surplusCount"]
        supplierGoddsCount <- map["supplierGoddsCount"]
        supplierName <- map["supplierName"]
        supplierId <- map["supplierId"]
        goodsName <- map["goodsName"]
        goodInfoCode <- map["goodInfoCode"]
        goodsId <- map["goodsId"]
        supplierShakeGoodsId <- map["supplierShakeGoodsId"]
        
    }
}