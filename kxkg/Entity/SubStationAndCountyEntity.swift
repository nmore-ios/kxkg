//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

///
class SubStationAndCountyEntity:Mappable {
    ///Id
    var substationId:Int?
    ///Id
    var countyId:Int?
   
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        countyId <- map["countyId"]
        substationId <- map["substationId"]
        
    }
}