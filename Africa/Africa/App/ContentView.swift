//
//  ContentView.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //MARK: - Properties
        let animals:[Animal] = Bundle.main.decode("animals.json")
        
        //MARK: - Body
        
        NavigationView{
            List{
                CoverImageView()
                    .frame(height:300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals){ animal in
                    NavigationLink(destination:AnimalDetailView(animal: animal)){
                        AnimalListItemView(animal: animal)

                    }

                    
                }
            }
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
