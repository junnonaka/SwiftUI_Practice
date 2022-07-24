//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/10.
//

import Foundation

extension Bundle{
    //＜＞で囲むことでTの型（任意の型）に対してdecodeを行うことができる（ジェネリクス型）
    func decode<T: Codable>(_ file:String) -> T{
        //1.Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil)else{
            fatalError("failed to locate \(file)")
        }
        //2.Create a property for the data
        guard let data = try? Data(contentsOf: url)else{
            fatalError("Failed to load \(file) from bundle")
        }
        
        //3.Create a decoder
        let decoder = JSONDecoder()
        
        //4.Create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data)else{
            fatalError("failed to decode \(file) from bundle")
        }
        
        //5. Returm the ready-to-use data
        return loaded
    }
}
