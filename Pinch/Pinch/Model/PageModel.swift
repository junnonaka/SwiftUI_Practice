//
//  PageModel.swift
//  Pinch
//
//  Created by 野中淳 on 2022/05/17.
//

import Foundation

//Identifiable：識別可能にする
struct Page:Identifiable{
    let id:Int
    let imageName:String
}

extension Page{
    var thumbnailName:String{
        return "thumb-" + imageName
    }
}
