//
//  NetworkLayer.swift
//  senddata
//
//  Created by Ammad on 08/07/2022.
//

import Foundation
import Alamofire
class NetworkLayer{
    
    func postmydata(_ link1:String,_ tok:String,_ mymodel:Model){
        
      
        
        
      let headers1: HTTPHeaders = [.authorization(bearerToken:tok )]
      
    
   
        let myurl=URL(string: link1)
//        print(AF.request(myurl!, method: .post, parameters:data, headers:headers1 )
        let response = AF.request(
            myurl!,
            method: .post,
            parameters: mymodel.data,
                    encoding: JSONEncoding.default,
                    headers: headers1
                   
                )  .validate()
            .responseJSON { response in
                print(response)
        }
        
        //in case of errors
        /*
         
         .validate()
    .responseJSON { response in
        switch response.result {
        case .success:
            let statusCode = (response.response?.statusCode)!
            print(response)
          //  print(response.response)
           // print("...HTTP code: \(statusCode)")
        case .failure(_):
            print("error")
        }
}
         */
 
        
    }
    
}
