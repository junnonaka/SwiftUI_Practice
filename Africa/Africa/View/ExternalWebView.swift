//
//  ExternalWebView.swift
//  Africa
//
//  Created by 野中淳 on 2022/07/17.
//

import SwiftUI

struct ExternalWebView: View {
    //MARK: - Properties
    let animal:Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: "https://wikipedia.org")!)
                }.foregroundColor(.accentColor)
            }//HStack
        }//Box
    }
}

struct ExternalWebView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWebView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
