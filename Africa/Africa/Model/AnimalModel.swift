//
//  AnimalModel.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/11.
//

import Foundation

struct Animal:Codable,Identifiable{
    let id:String
    let name:String
    let headline:String
    let description:String
    let link:String
    let image:String
    let gallery:[String]
    let fact:[String]
}
