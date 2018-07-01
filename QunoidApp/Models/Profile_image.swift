
//  QunoidApp
//
//  Created by Cyber on 6/29/18.
//  Copyright © 2018 Cyber. All rights reserved.
//

import Foundation
import ObjectMapper

struct Profile_image : Mappable {
	var small : String?
	var medium : String?
	var large : String?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		small <- map["small"]
		medium <- map["medium"]
		large <- map["large"]
	}

}
