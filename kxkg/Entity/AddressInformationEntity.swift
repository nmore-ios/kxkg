//
//  AddressInformationEntity.swift
//  kxkg
//
//  Created by penghao on 15/12/30.
//  Copyright © 2015年 penghao. All rights reserved.
//

///保存地址信息
class AddressInformationEntity:NSObject {
    //地址信息省市区
    var address:String?
    //经纬度
    var latitudeAndLongitude:String?;
    var county:String?;
    var city:String?;
    var province:String?
}
