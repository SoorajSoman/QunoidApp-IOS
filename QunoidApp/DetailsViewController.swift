//
//  DetailsViewController.swift
//  QunoidApp
//
//  Created by Cyber on 7/1/18.
//  Copyright © 2018 Cyber. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var  user:User = UnSplashList[myIndex].user!
        
        var url:Urls = UnSplashList[myIndex].urls!
        
        imageview.setCustomImage(url.regular)
        label.text=user.bio
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
