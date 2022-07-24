//
//  SettingsRowView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/07/05.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - Properties
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    
    var body: some View {
        VStack {
            Divider()
            HStack{
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(destination: URL(string: "https://\(linkDestination!)")!) {
                        Text(linkLabel!)
                    }
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    
                }else{
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Jhone / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
            SettingsRowView(name: "Website", content: nil, linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
