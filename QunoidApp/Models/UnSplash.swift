//
//  UnSplash.swift
//  QunoidApp
//
//  Created by Cyber on 6/29/18.
//  Copyright © 2018 Cyber. All rights reserved.
//

import Foundation
import ObjectMapper

struct Unsplash : Mappable {
    var id : String?
    var created_at : String?
    var updated_at : String?
    var width : Int?
    var height : Int?
    var color : String?
    var description : String?
    var urls : Urls?
    var links : Links?
    var categories : [String]?
    var sponsored : Bool?
    var likes : Int?
    var liked_by_user : Bool?
    var current_user_collections : [String]?
    var slug : String?
    var user : User?
    
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        
        id <- map["id"]
        created_at <- map["created_at"]
        updated_at <- map["updated_at"]
        width <- map["width"]
        height <- map["height"]
        color <- map["color"]
        description <- map["description"]
        urls <- map["urls"]
        links <- map["links"]
        categories <- map["categories"]
        sponsored <- map["sponsored"]
        likes <- map["likes"]
        liked_by_user <- map["liked_by_user"]
        current_user_collections <- map["current_user_collections"]
        slug <- map["slug"]
        user <- map["user"]
    }
    
}
