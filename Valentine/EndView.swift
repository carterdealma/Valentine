//
//  EndView.swift
//  Valentine
//
//  Created by CARTER MA on 2/4/24.
//

import SwiftUI

struct EndView: View {
    @State private var fontName : String = "Robusta Show"
    @State private var fontColor : Color = Color("fontColor")
    
    var body: some View {
        AnimatedImageView(fileName: "mocha1")
        ZStack
        {
            Color("backgroundColor")
                .ignoresSafeArea()
            Text("yayyyyy!!!!!!")
                .font(.custom(fontName, size: 60))
                .foregroundStyle(fontColor)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
        }
    }
}

#Preview {
    EndView()
}
