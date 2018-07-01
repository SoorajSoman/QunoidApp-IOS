//
//
//  QunoidApp
//
//  Created by Cyber on 6/29/18.
//  Copyright © 2018 Cyber. All rights reserved.
//
import Foundation
import ObjectMapper

struct Links : Mappable {
	var selflink : String?
	var html : String?
	var photos : String?
	var likes : String?
	var portfolio : String?
	var following : String?
	var followers : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		selflink <- map["self"]
		html <- map["html"]
		photos <- map["photos"]
		likes <- map["likes"]
		portfolio <- map["portfolio"]
		following <- map["following"]
		followers <- map["followers"]
	}

}
