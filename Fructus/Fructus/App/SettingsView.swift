//
//  SettingsView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/06/27.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - properties
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnbording") var isOnbording:Bool = false
    
    //MARK: - body
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20){
                    //MARK: - Section1
                    GroupBox(
                        label:SettigsLabelView(labelText: "fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturary low in fat and jfidjsjijfijidjfijdsifjifjisdjfijsifjdsa m")
                                .font(.footnote)
                        }
                    }
                    //MARK: - Section2
                    GroupBox {
                        Divider().padding(.vertical,4)
                        Text("if you wish, you can restart the application by toggle the switch in this box. that way it starts the onbording process and you will see the welcome screen again")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnbording) {
                            if isOnbording {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    } label: {
                        SettigsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                    
                    //MARK: - Section3
                    GroupBox {

                        SettingsRowView(name: "Developer", content: "Jhon / jane")
                        SettingsRowView(name:"Designer",content:"Robert petera")
                        SettingsRowView(name: "WebSite", content: nil, linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                    } label: {
                        SettigsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }

                    
                }
            }
            .navigationTitle(Text("Settings"))
            .navigationBarTitleDisplayMode(.large)
            .toolbar(content: {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                }

            })
            .padding()
            
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
