//
//  DocumentEntity.swift
//  moreEntity
//
//  Created by nevermore on 15/12/21.
//  Copyright © 2015年 hzw. All rights reserved.
//

import Foundation
/// 新闻动态或商城公告实体
class DocumentEntity:Mappable {
    ///文档Id
    var documentId:Int?;
    ///文档标题
    var title:String?
    ///正文
    var contents:String?;
    ///作者
    var author:String?;
    ///是否在前台显示(1显示,2不显示)
    var isShow:Int?;
    ///发布时间
    var publishDate:String?
    ///类型标志，1为商城公告，2为新闻动态
    var typeFlag:Int?
    
    
    init(){}
    required init?(_ map: Map) {
        mapping(map)
    }
    func mapping(map: Map) {
        documentId <- map["documentId"]
        title <- map["title"]
        contents <- map["contents"]
        author <- map["author"]
        isShow <- map["isShow"]
        publishDate <- map["publishDate"]
        typeFlag <- map["typeFlag"]
        
    }
}