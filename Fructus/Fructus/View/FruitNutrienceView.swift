//
//  FruitNutrienceView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/06/25.
//

import SwiftUI

struct FruitNutrienceView: View {
    //MARK: - properties
    var fruit:Fruit
    let nutrients:[String] = ["Enagy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    //MARK: - body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutrional value per 100g"){
                ForEach(0 ..< nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[0])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//:box
    }
}

struct FruitNutrienceView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrienceView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
    }
}
