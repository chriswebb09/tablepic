//
//  DataFromAPI.swift
//  TablePics
//
//  Created by Christopher Webb-Orenstein on 8/30/16.
//  Copyright © 2016 Christopher Webb-Orenstein. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

struct DataFromAPI {
    
    let apiData: [String] = []
    
    func sendAPIRequest(request:NSURLRequest, completion: ([String]) -> ()) {
        Alamofire.request(request).responseString { (response) in
            switch response.result {
            case .Success(let responseObject):
                var returnedData: [String] = []
                let response = responseObject as! NSString
                returnedData.append(response as String)
                print(responseObject)
                completion(returnedData)
            default:
                print("ERROR")
            }
        }
        
    }
}