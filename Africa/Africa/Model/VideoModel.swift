//
//  VideoModel.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/21.
//

import Foundation

struct Video:Codable,Identifiable{
    let id:String
    let name:String
    let headline:String
    
    //Computed Property
    var thumbnail:String{
        "video-\(id)"
    }
}
