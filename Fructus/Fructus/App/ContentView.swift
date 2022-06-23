//
//  ContentView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/05/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - properties
    
    var fruits:[Fruit] = fruitsData
    
    //MARK: - body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){item in
                    FruitRowView(fruit: item)
                        .padding(.vertical,4)
                }
            }
            .navigationTitle("Fruits")
        }
        //:Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
