//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/06/24.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - properties
    
    
    var fruit:Fruit
    
    @State private var isAnimationg:Bool = false
    
    //MARK: - body
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimationg ? 1.0 : 0.6)
        }//:ZStack
        .frame(height:440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)){
                isAnimationg = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
