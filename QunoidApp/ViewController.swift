//
//  ViewController.swift
//  QunoidApp
//
//  Created by Cyber on 6/28/18.
//  Copyright © 2018 Cyber. All rights reserved.
//

import UIKit
import ObjectMapper
import Alamofire
import AlamofireObjectMapper

var myIndex=0
var UnSplashList=[Unsplash]()

class ViewController: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate{
    
     @IBOutlet weak var collectView: UICollectionView!
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //myImageView.imageFromUrl("https://robohash.org/123.png")
        // Do any additional setup after loading the view, typically from a nib.
        self.userRequest()
        
        
    }
    
    
    func userRequest(){
        
        Alamofire.request("https://api.unsplash.com/photos/?client_id=8634366274bd23efb9b023fb9b2c6502e67f7dd5d6a7962b3b49fbee170940f8").responseArray { (response: DataResponse<[Unsplash]>) in
            print("----------------------------------------------")
            print(response.result.value)
            
            UnSplashList = response.result.value!
            self.collectView.reloadData()
            
         
        }
//        Alamofire.request("https://api.unsplash.com/photos/?client_id=8634366274bd23efb9b023fb9b2c6502e67f7dd5d6a7962b3b49fbee170940f8").responseJSON{
//            response in
//        // Map via ObjectMapper
//            self.UnSplashList = Mapper<Array<Unsplash>().map()
//
//        }
//
//        NetworkManager.getUsers(string: "https://api.unsplash.com/photos/?client_id=8634366274bd23efb9b023fb9b2c6502e67f7dd5d6a7962b3b49fbee170940f8",) { json in
//           // self.UnSplashList = Mapper<Unsplash >().map(JSONObject:response.result.value)
//
//            //self.UnSplashList = Mapper<Unsplash>().mapArray(json:json);
//            //if let jsonData = data as? String {
//             //   self.UnSplashList = Mapper<Unsplash >().mapArray(JSONString: jsonData)
//          //  }
////
////            if let json = json, let array = json["results"] as? [[String:Any]] {
////                for item in array {
////                    if let itunceItem = ItunceItem(JSON: item) {
////                        print("----------------------------------------------")
////                        print(itunceItem.description)
////                    }
////                }
////            }
//        }
        
    }
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       return UnSplashList.count;
    }

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let carditem=collectionView.dequeueReusableCell(withReuseIdentifier: "listitem", for: indexPath)as!  UICollectionCardViewCell
        
        var  user:User = UnSplashList[indexPath.row].user!
        
        var url:Urls = UnSplashList[indexPath.row].urls!
        
        var profile:Profile_image = user.profile_image!
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(connected(_:)))


        carditem.profileName.text=user.username!
        carditem.descriptionText.text=user.bio
        carditem.profileImage.setCustomImage(profile.medium);
        carditem.cardImageBackground.setCustomImage(url.regular);
       
        carditem.cardImageBackground.isUserInteractionEnabled = true
        carditem.cardImageBackground.tag = indexPath.row
        carditem.cardImageBackground.addGestureRecognizer(tapGestureRecognizer)
        carditem.contentView.layer.cornerRadius = 4.0
        carditem.contentView.layer.borderWidth = 1.0
        carditem.contentView.layer.borderColor = UIColor.clear.cgColor
        carditem.contentView.layer.masksToBounds = false
        carditem.layer.shadowColor = UIColor.gray.cgColor
        carditem.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        carditem.layer.shadowRadius = 4.0
        carditem.layer.shadowOpacity = 1.0
        carditem.layer.masksToBounds = false
        carditem.layer.shadowPath = UIBezierPath(roundedRect: carditem.bounds, cornerRadius: carditem.contentView.layer.cornerRadius).cgPath
        return carditem
    }
    

    
  
    @objc func connected(_ sender:AnyObject){
        print("you tap image number : \(sender.view.tag)")
        myIndex = sender.view.tag
        performSegue(withIdentifier: "segue", sender: self)
        //Your code for navigate to another viewcontroller
    }
}

