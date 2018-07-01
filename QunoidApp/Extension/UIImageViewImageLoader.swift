//
//  UIImageView+ImageLoader.swift
//  QunoidApp
//
//  Created by Cyber on 6/29/18.
//  Copyright © 2018 Cyber. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
 public func setCustomImage(_ imgURLString: String?) {
        guard let imageURLString = imgURLString else {
            self.image = UIImage(named: "default.png")
            return
        }
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: URL(string: imageURLString)!)
            DispatchQueue.main.async {
                self.image = data != nil ? UIImage(data: data!) : UIImage(named: "default.png")
            }
        }
    }
}
