//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 职位的实体类
class PositionEntity:Mappable {
    ///职位表主键
    var positionId:Int?
    ///职位名
    var positionName:String?
    ///职位创建时间
    var positionCtime:String?
    ///职位描述
    var positionRemark:String?
    ///关联部门
    var departmentId:Int?
    ///删除标识。1显示，2隐藏
    var flag:Int?
    ///分站ID
    var subStationId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        positionId <- map["positionId"]
        positionName <- map["positionName"]
        positionCtime <- map["positionCtime"]
        positionRemark <- map["positionRemark"]
        departmentId <- map["departmentId"]
        flag <- map["flag"]
        subStationId <- map["subStationId"]
        
    }
}