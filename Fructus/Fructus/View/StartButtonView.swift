//
//  StartButtonView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/05/31.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - Properties
    
    @AppStorage("isOnbording") var isOnbording:Bool?
    
    //MARK: - Body
    var body: some View {
        Button {
            print("Exit the operating")
            isOnbording = false
        } label: {
            HStack(spacing:8) {
                Text("start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
        }//:Button
        .accentColor(Color.white)
    }
}

//MARK: - Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
