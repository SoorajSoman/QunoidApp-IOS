//
//
//  QunoidApp
//
//  Created by Cyber on 6/29/18.
//  Copyright © 2018 Cyber. All rights reserved.
//

import Foundation
import ObjectMapper

struct User : Mappable {
	var id : String?
	var updated_at : String?
	var username : String?
	var name : String?
	var first_name : String?
	var last_name : String?
	var twitter_username : String?
	var portfolio_url : String?
	var bio : String?
	var location : String?
	var links : Links?
	var profile_image : Profile_image?
	var instagram_username : String?
	var total_collections : Int?
	var total_likes : Int?
	var total_photos : Int?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		id <- map["id"]
		updated_at <- map["updated_at"]
		username <- map["username"]
		name <- map["name"]
		first_name <- map["first_name"]
		last_name <- map["last_name"]
		twitter_username <- map["twitter_username"]
		portfolio_url <- map["portfolio_url"]
		bio <- map["bio"]
		location <- map["location"]
		links <- map["links"]
		profile_image <- map["profile_image"]
		instagram_username <- map["instagram_username"]
		total_collections <- map["total_collections"]
		total_likes <- map["total_likes"]
		total_photos <- map["total_photos"]
	}

}
