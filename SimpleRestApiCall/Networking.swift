//
//  Networking.swift
//  SimpleRestApiCall
//
//  Created by Ganeshshetty on 13/09/17.
//  Copyright © 2017 Ganesh Shetty. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper
class Networking{

    
    class func getEventsNearby(){
        let url: String = "https://api-cdn.chumbak.com/v1/bohemian-auto-trip-shape-cushion/bxxL/"
//        let parameters:[String :Any] = ["device_type" : 1 ]
        Alamofire.request(url, method: .get).responseObject { (response: DataResponse<Product>) in
            
            let product = response.result.value
            if ( product?.status != nil) {
                print( product?.status as Any)
            }
            if ( product?.selected_product != nil) {
                print( product?.selected_product as Any)
            }
            if ( product?.item?.name != nil ) {
                print( product?.item?.name as Any )
            }
            if( product?.office_hours != nil ) {
                print(product?.office_hours! as Any)
            }
            if ( product?.item?.price != nil ) {
                print( (product?.item?.price! as NSString?)?.floatValue as Any )
            }
            if( product?.item?.url_key != nil ) {
                print ( product?.item?.url_key! as Any )
            }
            if let images = product?.item?.images
            {
                for image in images {
                    print( image.file! )
                    print( image.label! )
                }
            }
        }
    }
}
