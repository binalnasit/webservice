//
//  webserviceForimggrt.swift
//  binalInterviewTask
//
//  Created by CS-MacSierra on 03/02/19.
//  Copyright © 2019 CS-MacSierra. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON

//-------------------------------------------------------------
// MARK: - Url
//-------------------------------------------------------------
let Baseurl = Constantdata.WebserviceURLs.kBaseURL
let BaseimageURL = Constantdata.WebserviceURLs.kBaseImageURL
var request : Request!

//-------------------------------------------------------------
// MARK: - Webservice For GetData Image Method
//-------------------------------------------------------------

func GetData(_ dictParams: AnyObject, nsURL: String,  completion: @escaping (_ result: AnyObject ,_ success: Bool) -> Void)
{
    let url = Baseurl + BaseimageURL
    
    Alamofire.request(url, method: .get, parameters: dictParams as? [String : AnyObject], encoding: URLEncoding.default)
        .validate()
        .responseJSON
        { (response) in
            
            
            if let JSON = response.result.value
            {
                
                if (JSON as AnyObject).object(forKey:("status")) as? Bool == false
                {
                    completion(JSON as AnyObject, false)
                }
                else
                {
                    completion(response.data as AnyObject, true)
                }
            }
            else
            {
                print("Data not Found")
            }
    }
}



