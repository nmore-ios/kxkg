//
//  File.swift
//  moreEntity
//
//  Created by nevermore on 15/12/22.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation

/// (分销商经验范围的坐标)
class SubsupplierAndCoordinatesEntity:Mappable {
    ///
    var subsupplierId:Int?
    ///
    var coordinates:String?
    ///
    var supplierId:Int?
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        supplierId <- map["supplierId"]
        coordinates <- map["coordinates"]
        subsupplierId <- map["subsupplierId"]
               
    }
}