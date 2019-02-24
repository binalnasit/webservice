//
//  ViewController.swift
//  binalInterviewTask
//
//  Created by CS-MacSierra on 03/02/19.
//  Copyright © 2019 CS-MacSierra. All rights reserved.
//

import UIKit
import SDWebImage
import Alamofire
import SwiftyJSON

var aryimage = [imageDisplay]()

class CustomImageget: UIViewController {

    
    // Mark: = Outlet

    override func viewDidLoad() {
        super.viewDidLoad()
        webserviceOfSetImage()
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
        //-------------------------------------------------------------
        // MARK: - WebserviceURLs
        //-------------------------------------------------------------
    
        func webserviceOfSetImage()
        {
        webserviceOfGetImage { (result, status) in
            
        if(status)
        {
        do {
            if (try JSONSerialization.jsonObject(with: result as! Data, options : .allowFragments) as? Dictionary<String,Any>) != nil
        {
            print(result)
//            aryimage = result as! [imageDisplay]
        }
        else {
        print("bad json")
        }
        }
        catch let DecodingError.dataCorrupted(context) {
        print(context)
        } catch let DecodingError.keyNotFound(key, context) {
        print("Key '\(key)' not found:", context.debugDescription)
        print("codingPath:", context.codingPath)
        } catch let DecodingError.valueNotFound(value, context) {
        print("Value '\(value)' not found:", context.debugDescription)
        print("codingPath:", context.codingPath)
        } catch let DecodingError.typeMismatch(type, context)  {
        print("Type '\(type)' mismatch:", context.debugDescription)
        print("codingPath:", context.codingPath)
        } catch {
        print("error: ", error)
    
        }
        }
        }
    }
}

extension CustomImageget: UICollectionViewDataSource,UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "imageCollectionViewCell", for: indexPath) as! imageCollectionViewCell
        let dataProfile  = Constantdata.WebserviceURLs.kBaseImageURL
     
        print(dataProfile)
        
        let imageURL = URL(string: (dataProfile))
        cell.image.sd_setShowActivityIndicatorView(true)
        
        cell.image.sd_setImage(with: imageURL, placeholderImage: UIImage.init(named: "PlaceHolderimg"), options: []) { (image, error, cacheType, url) in
            cell.image.sd_removeActivityIndicator()
        }
        return cell
    }
    
    // Animation cell
//    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
//        cell.alpha = 0.0
//        let transform = CATransform3DTranslate(CATransform3DIdentity, -250 , 20 , 0)
//        cell.layer.transform = transform
//        UIView.animate(withDuration: 2.0) {
//            cell.alpha = 1.0
//            cell.layer.transform = CATransform3DIdentity
//        }
//    }
}


