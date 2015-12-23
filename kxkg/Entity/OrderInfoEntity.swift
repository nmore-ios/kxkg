//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 订单
class OrderInfoEntity:Mappable {
    ///订单号
    var orderinfoId:Int?
    ///订单编号
    var orderSN:String?
    ///订单类型1-店铺对供应商 2-用户对店铺
    var orderType:Int?
    ///店铺Id
    var storeId:Int?
    /// 订单总价
    var orderPrice:String?
    ///供应商或者物流配送商或者分销商名字
    var supplierName:String?
    ///供应商或者物流配送商或者分销商id
    var supplierId:Int?
    ///1-未发货，2已发货，3-已经完成
    var orderStatus:Int?
    ///下单时间
    var add_time:String?
    /// 出货编号
    var out_trade_sn:String?
    ///支付日期
    var pay_time:String?
    ///支付消息
    var pay_message:String?
    ///送货时间
    var ship_time:String?
    ///发票编号
    var invoice_no:String?
    ///订单完成日期
    var finished_time:String?
    ///商品数量
    var goods_amount:String?
    ///折扣
    var discount:String?
    ///评价状态 1-未评价2-已评价
    var evaluation_status:Int?
    ///评价时间
    var evaluation_time:String?
    ///是否匿名留言1-否 2-是
    var anonymous:Int?
    ///卖家附言
    var postscript:String?
    ///1-可以抢单，2已经被抢单，3开始送货  4已完成
    var robflag:Int?
    ///收货地址
    var address:String?
    ///邮政编码
    var zipcode:String?
    ///当前登录者的Id
    var buyerId:Int?
    ///买家电话
    var phone_tel:String?
    ///买家用户名
    var buyName:String?
    ///店铺名称
    var storeName:String?
    ///卖家Id
    var sellerId:Int?
    /// 卖家名字
    var sellerName:String?
    ///附加金额
    var additionalMoney:String?
    ///厂商名字
    var factoryName:String?
    ///厂商Id
    var factoryId:Int?
    ///分站Id
    var substationId:Int?
    ///移动店铺抢单人的userId
    var msUserId:Int?
    ///移动店铺抢单人的userName
    var msUserName:String?
    ///vo该订单下面所有商品集合
    //var list:[GoodsBasicInfoVo]=[]
    ///供应商地址
    var supplierAddress:String?
    
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        orderinfoId <- map["orderinfoId"]
        orderSN <- map["orderSN"]
        orderType <- map["orderType"]
        storeId <- map["storeId"]
        orderPrice <- map["orderPrice"]
        supplierName <- map["supplierName"]
        supplierId <- map["supplierId"]
        orderStatus <- map["orderStatus"]
        add_time <- map["add_time"]
        out_trade_sn <- map["out_trade_sn"]
        pay_time <- map["pay_time"]
        pay_message <- map["pay_message"]
        ship_time <- map["ship_time"]
        invoice_no <- map["invoice_no"]
        finished_time <- map["finished_time"]
        goods_amount <- map["goods_amount"]
        discount <- map["discount"]
        evaluation_status <- map["evaluation_status"]
        evaluation_time <- map["evaluation_time"]
        anonymous <- map["anonymous"]
        postscript <- map["postscript"]
        robflag <- map["robflag"]
        address <- map["address"]
        zipcode <- map["zipcode"]
        buyerId <- map["buyerId"]
        phone_tel <- map["phone_tel"]
        buyName <- map["buyName"]
        storeName <- map["storeName"]
        sellerId <- map["sellerId"]
        sellerName <- map["sellerName"]
        additionalMoney <- map["additionalMoney"]
        factoryName <- map["factoryName"]
        factoryId <- map["factoryId"]
        substationId <- map["substationId"]
        msUserId <- map["msUserId"]
        msUserName <- map["msUserName"]
        supplierAddress <- map["supplierAddress"]
        
    }
}