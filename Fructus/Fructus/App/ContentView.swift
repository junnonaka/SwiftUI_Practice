//
//  ContentView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/05/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - properties
    
    @State private var isShowingSettings:Bool = false
    
    var fruits:[Fruit] = fruitsData
    
    //MARK: - body
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()){item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }
                .sheet(isPresented: $isShowingSettings){
                    SettingsView()
                }

            }
        }
        //:Navigation
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
