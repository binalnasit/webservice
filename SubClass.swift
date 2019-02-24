//
//  SubClass.swift
//  binalInterviewTask
//
//  Created by CS-MacSierra on 03/02/19.
//  Copyright © 2019 CS-MacSierra. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

//-------------------------------------------------------------
// MARK: - URL
//-------------------------------------------------------------
let Base = Constantdata.WebserviceURLs.kBaseURL
let img = Constantdata.WebserviceURLs.kBaseImageURL

//-------------------------------------------------------------
// MARK: - Webservice Advertisements
//-------------------------------------------------------------

func webserviceOfGetImage(completion: @escaping(_ result: AnyObject, _ success: Bool) -> Void)
{
    let url = img
    GetData([] as AnyObject, nsURL: url, completion: completion)
}

class SubClass: NSObject {
}
