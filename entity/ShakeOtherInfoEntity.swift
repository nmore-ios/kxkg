//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 用户摇一摇记录表（暂时存放用户中奖与放弃奖品时的信息）
class ShakeOtherInfoEntity:Mappable {
    ///主键ID，用于修改
    var shakeOtherInfoId:Int?
    ///摇的数量,初始为0
    var shakeCount:Int?
    ///摇奖的几率。 形式：百分之十==0.1
    var shakeProbability:String?
    ///默认为0。填写0由系统随机获取一个数字，否则取填的数字
    var fixedValue:Int?
    ///IOS活动细则
    var iosInfoText:String?
    ///android活动细则
    var androidInfoText:String?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        shakeOtherInfoId <- map["shakeOtherInfoId"]
        shakeCount <- map["shakeCount"]
        shakeProbability <- map["shakeProbability"]
        fixedValue <- map["fixedValue"]
        iosInfoText <- map["iosInfoText"]
        androidInfoText <- map["androidInfoText"]
                
    }
}