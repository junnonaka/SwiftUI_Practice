//
//  SettigsLabelView.swift
//  Fructus
//
//  Created by 野中淳 on 2022/07/05.
//

import SwiftUI

struct SettigsLabelView: View {
    //MARK: - properties
    
    var labelText:String
    var labelImage:String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettigsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettigsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
