//
//  FructusApp.swift
//  Fructus
//
//  Created by 野中淳 on 2022/05/22.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnbording") var isOnbording: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnbording{
                OnbordingView()
            }else{
                ContentView()
            }
        }
    }
}
