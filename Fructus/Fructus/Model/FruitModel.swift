//
//  FruitModel.swift
//  Fructus
//
//  Created by 野中淳 on 2022/06/07.
//

import SwiftUI

//MARK: - Fruits Data Model

struct Fruit:Identifiable{
    //一意に認識可能にするためにIdentifiableにする
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
