//
//  StartView.swift
//  Valentine
//
//  Created by CARTER MA on 2/5/24.
//

import SwiftUI

struct StartView: View {
    @State private var fontName : String = "Robusta Show"
    @State private var fontColor : Color = Color("fontColor")
    @State private var startButtonFont : Font = .custom("Robusta Show", size: 40)
    
    var body: some View {
    NavigationView 
    {
        ZStack
        {
            Color("backgroundColor")
                .ignoresSafeArea()
            Text("Valentine <3")
                .font(.custom(fontName, size: 60))
                .foregroundStyle(fontColor)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
                .offset(x: 0, y: -200)
            Text("Created by Carter Ma")
                .font(.custom(fontName, size: 25))
                .foregroundStyle(fontColor)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
                .shadow(color: .black, radius: 0.6)
                .offset(x: 0, y: -130)
            NavigationLink(destination: CatView().navigationBarBackButtonHidden(true))
            {
                Text("Start!")
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
            }
            .background(.cyan)
            .clipShape(.capsule)
            .foregroundColor(fontColor)
            .font(startButtonFont)
            .shadow(color: .black, radius: 0.6)
            .shadow(color: .black, radius: 0.6)
            .shadow(color: .black, radius: 0.6)
            .shadow(color: .black, radius: 0.6)
            .offset(x: 0, y: 20)
            .buttonStyle(.bordered)
            
            GIFView(type: .url(URL(string: "https://media.tenor.com/_I6ysFj9dn0AAAAi/heart.gif")!))
                .frame(maxHeight: 450)
                .frame(maxWidth: 450)
                .offset(x:0, y: 300)
                .padding()
            }
        }
    }
}

#Preview {
    StartView()
}
