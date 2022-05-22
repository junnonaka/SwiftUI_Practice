//
//  HomeView.swift
//  Restart
//
//  Created by 野中淳 on 2022/03/07.
//

import SwiftUI

struct HomeView: View {
    //MARK: - Property
    @AppStorage("onbording") var isOnbordingViewActive:Bool = false
    @State private var isAnimating:Bool = false
    var body: some View {
        VStack(spacing: 20) {
            //MARK: - Header
            Spacer()
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
                .offset( y: isAnimating ? 35 : -35)
                .animation(.easeOut(duration: 4)
                            .repeatForever(), value: isAnimating)
            }
            //MARK: - center
            Text("The time that leads to mastery is dependent on the indencity of our forcus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            //MARK: - footer
            Spacer()
            
            Button {withAnimation {
                playSound(sound: "success", type: "m4a")
                isOnbordingViewActive = true
            }
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3,design: .rounded))
                    .fontWeight(.bold)
                    
            }//:BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: { isAnimating = true})
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
