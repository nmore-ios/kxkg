//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// sdfafda
class SubstationEntity:Mappable {
    ///
    var substationId:Int?
    ///
    var substationName:String?
    ///
    var ctime:String?
    ///
    var stateType:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        stateType <- map["stateType"]
        ctime <- map["ctime"]
        substationName <- map["substationName"]
        substationId <- map["substationId"]
                
    }
}