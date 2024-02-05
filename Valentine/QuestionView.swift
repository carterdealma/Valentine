//
//  ContentView.swift
//  Cat
//
//  Created by CARTER MA on 2/2/24.
//

import SwiftUI

struct QuestionView: View {
    @State private var fontColor : Color = Color("fontColor")
    @State private var noButtonText : String = "No"
    @State private var noButtonClickedCount : Int = 0
    @State private var fontName : String = "Robusta Show"
    @State private var yesButtonFont : Font = .custom("Robusta Show", size: 28)
    @State private var noButtonFont : Font = .custom("Robusta Show", size: 28)
    @State private var noButtonColor : Color = Color.red
    @State private var showNoButton = true
    
    private func updateNo() -> Void
    {
        if (noButtonClickedCount == 0)
        {
            noButtonText = "Are you sure?"
            yesButtonFont = .custom(fontName, size: 35)
            noButtonFont = .custom(fontName, size: 25)
        }
        else if (noButtonClickedCount == 1)
        {
            noButtonText = "Are you really sure??"
            yesButtonFont = .custom(fontName, size: 40)
            noButtonFont = .custom(fontName, size: 24)
        }
        else if (noButtonClickedCount == 2)
        {
            noButtonText = "Are you ABSOLUTELY sure??"
            yesButtonFont = .custom(fontName, size: 45)
            noButtonFont = .custom(fontName, size: 23)
        }
        else if (noButtonClickedCount == 3)
        {
            noButtonText = "Please, love"
            yesButtonFont = .custom(fontName, size: 50)
            noButtonFont = .custom(fontName, size: 22)
        }
        else if (noButtonClickedCount == 4)
        {
            noButtonText = "Don't be so cold ;-;"
            yesButtonFont = .custom(fontName, size: 55)
            noButtonFont = .custom(fontName, size: 21)
        }
        else if (noButtonClickedCount == 5)
        {
            noButtonText = "I'll do literally anything"
            yesButtonFont = .custom(fontName, size: 60)
            noButtonFont = .custom(fontName, size: 20)
        }
        else if (noButtonClickedCount == 6)
        {
            noButtonText = "bro..."
            yesButtonFont = .custom(fontName, size: 65)
            noButtonFont = .custom(fontName, size: 19)
        }
        else if (noButtonClickedCount == 7)
        {
            noButtonText = "i think you clicked the wrong button"
            yesButtonFont = .custom(fontName, size: 70)
            noButtonFont = .custom(fontName, size: 18)
        }
        else if (noButtonClickedCount == 8)
        {
            noButtonText = "I am heartbroken"
            yesButtonFont = .custom(fontName, size: 75)
            noButtonFont = .custom(fontName, size: 17)
        }
        else if (noButtonClickedCount == 9)
        {
            noButtonText = "pls reconsider your choice"
            yesButtonFont = .custom(fontName, size: 80)
            noButtonFont = .custom(fontName, size: 16)
        }
        else if (noButtonClickedCount == 10)
        {
            noButtonText = "come on darling"
            yesButtonFont = .custom(fontName, size: 85)
            noButtonFont = .custom(fontName, size: 15)
        }
        else if (noButtonClickedCount == 11)
        {
            noButtonText = "pretty pls"
            yesButtonFont = .custom(fontName, size: 90)
            noButtonFont = .custom(fontName, size: 14)
        }
        else if (noButtonClickedCount == 12)
        {
            noButtonText = "Yes"
            noButtonColor = Color.green
            yesButtonFont = .custom(fontName, size: 80)
        }
        noButtonClickedCount += 1
    }
    
    var body: some View {
    NavigationView
    {
        ZStack {
            Color("backgroundColor")
                .ignoresSafeArea()
            VStack {
                    Text("Will you be my Valentine ?")
                        .font(.custom(fontName, size: 40))
                        .foregroundStyle(fontColor)
                        .shadow(color: .black, radius: 0.6)
                        .shadow(color: .black, radius: 0.6)
                        .shadow(color: .black, radius: 0.6)
                        .shadow(color: .black, radius: 0.6)
                    HStack
                    {
                        NavigationLink(destination: EndView().navigationBarBackButtonHidden(true))
                        {
                            Text("Yes")
                                .shadow(color: .black, radius: 0.6)
                                .shadow(color: .black, radius: 0.6)
                                .shadow(color: .black, radius: 0.6)
                                .shadow(color: .black, radius: 0.6)
                        }
                        .background(.green)
                        .clipShape(.capsule)
                        .foregroundColor(fontColor)
                        .font(yesButtonFont)
                        .shadow(color: .black, radius: 0.6)
                        .shadow(color: .black, radius: 0.6)
                        .shadow(color: .black, radius: 0.6)
                        .shadow(color: .black, radius: 0.6)

                        if(noButtonClickedCount < 13)
                        {
                            Button(action: updateNo)
                            {
                                Text(noButtonText)
                                    .shadow(color: .black, radius: 0.6)
                                    .shadow(color: .black, radius: 0.6)
                                    .shadow(color: .black, radius: 0.6)
                                    .shadow(color: .black, radius: 0.6)
                            }
                            .background(.red)
                            .clipShape(.capsule)
                            .foregroundColor(fontColor)
                            .font(noButtonFont)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                        }
                        else
                        {
                            NavigationLink(destination: EndView().navigationBarBackButtonHidden(true))
                            {
                                Text("Yes")
                                    .shadow(color: .black, radius: 0.6)
                                    .shadow(color: .black, radius: 0.6)
                                    .shadow(color: .black, radius: 0.6)
                                    .shadow(color: .black, radius: 0.6)
                            }
                            .background(.green)
                            .clipShape(.capsule)
                            .foregroundColor(fontColor)
                            .font(yesButtonFont)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                        }
                    }
                    .buttonStyle(.bordered)
                    .padding()
                }
                .padding()
                .preferredColorScheme(.light)
            }
        }
    }
}


#Preview {
    QuestionView()
}
