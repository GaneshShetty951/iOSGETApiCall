//
//  Model.swift
//  SimpleRestApiCall
//
//  Created by Ganeshshetty on 14/09/17.
//  Copyright © 2017 Ganesh Shetty. All rights reserved.
//

import ObjectMapper

class Product: Mappable {
    var status : Int?
    var selected_product : Int?
    var office_hours : Bool?
    var item : Item?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        status <- map ["status"]
        selected_product <- map ["selected_product"]
        office_hours <- map ["office_hours"]
        item <- map ["product"]
    }
}

class Item : Mappable {
    var name : String?
    var price : String?
    var url_key : String?
    var images :[Image]?
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        name <- map [ "name" ]
        price <- map [ "price" ]
        url_key <- map [ "url_key" ]
        images <- map [ "Images" ]
    }
}

class Image : Mappable {
    var file : String?
    var label : String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        file <- map ["file"]
        label <- map ["label"]
    }
}
