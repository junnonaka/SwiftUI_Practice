//
//  ContentView.swift
//  Restart
//
//  Created by 野中淳 on 2022/03/04.
//

import SwiftUI



struct ContentView: View {
    
    @AppStorage("onbording") var isOnbordingViewActive:Bool = true
    
    var body: some View {
        ZStack{
            if isOnbordingViewActive{
                OnboardingView()
            }else{
                HomeView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
