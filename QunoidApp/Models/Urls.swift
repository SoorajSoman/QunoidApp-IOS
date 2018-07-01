//
//  
//  QunoidApp
//
//  Created by Cyber on 6/29/18.
//  Copyright © 2018 Cyber. All rights reserved.
//
import Foundation
import ObjectMapper

struct Urls : Mappable {
	var raw : String?
	var full : String?
	var regular : String?
	var small : String?
	var thumb : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		raw <- map["raw"]
		full <- map["full"]
		regular <- map["regular"]
		small <- map["small"]
		thumb <- map["thumb"]
	}

}
