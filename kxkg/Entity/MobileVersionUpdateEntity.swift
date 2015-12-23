//
//  MobileVersionUpdateEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 移动端版本更新实体类
class MobileVersionUpdateEntity:Mappable {
    ///主键ID
    var mobileversionupdateId:Int?
    ///此序号有变大说明有更新
    var androidMemberCode:Int?
    ///android消费者版更新详情
    var androidMemberDetails:String?
    ///android消费者版是否强制更新  默认为1(非强制更新) 2为强制更新
    var androidMemberForce:Int?
    ///此序号有变大说明有更新
    var androidStoreCode:Int?
    ///android店铺版更新详情
    var androidStoreDetails:String?
    ///android店铺版是否强制更新  默认为1(非强制更新) 2为强制更新
    var androidStoreForce:Int?
    ///此序号有变大说明有更新
    var iosMemberCode:Int?
    ///ios消费者版更新详情
    var iosMemberDetails:String?
    ///ios消费者版是否强制更新  默认为1(非强制更新) 2为强制更新
    var iosMemberForce:String?
    ///此序号有变大说明有更新
    var iosStoreCode:Int?
    ///ios店铺版更新详情
    var iosStoreDetails:String?
    ///ios店铺版是否强制更新  默认为1(非强制更新) 2为强制更新
    var iosStoreForce:Int?
    

    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        mobileversionupdateId <- map["mobileversionupdateId"]
        androidMemberCode <- map["androidMemberCode"]
        androidMemberDetails <- map["androidMemberDetails"]
        androidMemberForce <- map["androidMemberForce"]
        androidStoreCode <- map["androidStoreCode"]
        androidStoreDetails <- map["androidStoreDetails"]
        androidStoreForce <- map["androidStoreForce"]
        iosMemberCode <- map["iosMemberCode"]
        iosMemberDetails <- map["iosMemberDetails"]
        iosMemberForce <- map["iosMemberForce"]
        iosStoreCode <- map["iosStoreCode"]
        iosStoreDetails <- map["iosStoreDetails"]
        iosStoreForce <- map["iosStoreForce"]
        
    }
}