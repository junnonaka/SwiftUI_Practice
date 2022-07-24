//
//  CoverImageView.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/10.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - Properties
    let coverImages:[CoverImage] = Bundle.main.decode("covers.json")
    //MARK: - Body
    
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                .scaledToFill()
            }
        }.tabViewStyle(.page)
        
        
    }
}

//MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
