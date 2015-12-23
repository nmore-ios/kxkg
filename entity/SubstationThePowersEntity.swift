//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// 默认分站拥有权限
class SubstationThePowersEntity:Mappable {
    ///分站默认权限ID
    var powersId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        powersId <- map["powersId"]
        
        
    }
}