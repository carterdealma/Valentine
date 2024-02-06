//
//  EndView.swift
//  Valentine
//
//  Created by CARTER MA on 2/4/24.
//

import SwiftUI
import FLAnimatedImage

struct EndView: View {
    @State private var fontName : String = "Robusta Show"
    @State private var fontColor : Color = Color("fontColor")
    @State private var restartButtonFont : Font = .custom("Robusta Show", size: 28)
    
    var body: some View {
        NavigationView {
            ZStack
            {
                Color("backgroundColor")
                    .ignoresSafeArea()
                GIFView(type: .url(URL(string: "https://media.tenor.com/ICmg8MUfSg8AAAAi/milk-and-mocha.gif")!))
                    .frame(maxHeight: 300)
                    .offset(x:-15, y:-200)
                    .padding()
                Text("yayyyyy!!!!!!")
                    .font(.custom(fontName, size: 60))
                    .foregroundStyle(fontColor)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                Text("(now hold out your hand and pls accept a little gift)")
                    .font(.custom(fontName, size: 20))
                    .foregroundStyle(fontColor)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .frame(alignment: .top)
                    .offset(x: 0, y: 100)
                    .multilineTextAlignment(.center)
                    .padding()
                HStack
                {
                    NavigationLink(destination: StartView().navigationBarBackButtonHidden(true))
                    {
                        Text("Restart")
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                    }
                    .background(.cyan)
                    .clipShape(.capsule)
                    .foregroundColor(fontColor)
                    .font(restartButtonFont)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .offset(x: 100, y: 350)
                }
                .padding()
                .buttonStyle(.bordered)
            }
        }
    }
}

#Preview {
    EndView()
}
