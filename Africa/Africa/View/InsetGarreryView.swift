//
//  InsetGarreryView.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/16.
//

import SwiftUI

struct InsetGarreryView: View {
    //MARK: - Properties
    
    let animal:Animal
    
    //MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack (alignment:.center,spacing: 15){
                ForEach(animal.gallery,id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                    .cornerRadius(12)
                }
            }

        }
        
    }
}

struct InsetGarreryView_Previews: PreviewProvider {
    
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsetGarreryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
