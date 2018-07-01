//
//  NetworkManager.swift
//  QunoidApp
//
//  Created by Cyber on 6/29/18.
//  Copyright © 2018 Cyber. All rights reserved.
//


import Foundation
import Alamofire

class NetworkManager {
    
    
    class func getUsers(string: String, block: @escaping ([String: Any]?)->()){
       
        Alamofire.request(string).responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
          
           if let result = response.result.value as? [String: Any] {
              block(result)
             } else {
                block(nil)
            }
            
        }
    
    }

}
