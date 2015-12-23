//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// sdfafda
class SubstationAndPowersEntity:Mappable {
    ///Id
    var substationId:Int?
    ///Id
    var powerId:Int?
    
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        substationId <- map["substationId"]
        powerId <- map["powerId"]
               
    }
}