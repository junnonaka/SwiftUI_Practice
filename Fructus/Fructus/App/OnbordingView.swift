//
//  OnbordingView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/06/07.
//

import SwiftUI

struct OnbordingView: View {
    //MARK: - Properties
    var fruits:[Fruit] = fruitsData
    //MARK: - Body
    var body: some View {
        TabView{
            ForEach(0..<5){ item in
                //FruitCardView()
                FruitCardView(fruit: fruits[item])
                //Text("Cards")
            }//LOOP
        }//:TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}
//MARK: - Preview
struct OnbordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnbordingView()
    }
}
