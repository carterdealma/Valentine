//
//  CatView.swift
//  Valentine
//
//  Created by CARTER MA on 2/5/24.
//

import SwiftUI

struct CatView: View {
    @State private var fontName : String = "Robusta Show"
    @State private var fontColor : Color = Color("fontColor")
    @State private var dialogueColor : Color = Color("dialogueColor")
    @State private var dialogue : String = "hi sofia it's so nice to meet you ! my name is mochi"
    @State private var dialogueYOffset : CGFloat = -130
    @State private var continueButtonFont : Font = .custom("Robusta Show", size: 28)
    @State private var imageName : String = "Cat1"
    @State private var continueButtonClickCount = 0
    
    private func updateContinue()
    {
        if (continueButtonClickCount == 0)
        {
            imageName = "Cat2"
            dialogue = "i am carter's best attempt at drawing a cat.  his broke ass doesn't own a drawing tablet so he borrowed one from his roommate"
            dialogueYOffset = -150
        }
        else if (continueButtonClickCount == 1)
        {
            imageName = "Cat3"
            dialogue = "he is not an artist, but he did promise you a cat.  so here i am !"
            dialogueYOffset = -130
        }
        else if (continueButtonClickCount == 2)
        {
            imageName = "Cat4"
            dialogue = "aren't computer science majors so dateable ??"
        }
        else if (continueButtonClickCount == 3)
        {
            imageName = "Cat5"
            dialogue = "anyways, he made this app to ask you one simple question,  so i will let him ask it to you  . . ."
        }
        else if (continueButtonClickCount == 4)
        {
            imageName = "Cat1"
            dialogue = "bye byeeee!!"
        }
        continueButtonClickCount += 1
    }
    
    
    var body: some View {
        NavigationView {
            ZStack
            {
                Color("backgroundColor")
                    .ignoresSafeArea()
                Text(dialogue)
                    .font(.custom(fontName, size: 25))
                    .foregroundStyle(dialogueColor)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .offset(x: 0, y: dialogueYOffset)
                    .multilineTextAlignment(.center)
                    .padding()
                Image(imageName)
                    .resizable()
                    .frame(width: 415, height: 405)
                if (continueButtonClickCount < 5)
                {
                    Button(action: updateContinue)
                    {
                        Text("Continue")
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                    }
                    .background(.cyan)
                    .clipShape(.capsule)
                    .foregroundColor(fontColor)
                    .font(continueButtonFont)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .offset(x: 100, y: 350)
                    .buttonStyle(.bordered)
                    .padding()
                }
                else
                {
                    NavigationLink(destination: QuestionView().navigationBarBackButtonHidden(true))
                    {
                        Text("Continue")
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                            .shadow(color: .black, radius: 0.6)
                    }
                    .background(.cyan)
                    .clipShape(.capsule)
                    .foregroundColor(fontColor)
                    .font(continueButtonFont)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .shadow(color: .black, radius: 0.6)
                    .offset(x: 100, y: 350)
                    .buttonStyle(.bordered)
                    .padding()
                }
            }
        }
    }
}

#Preview {
    CatView()
}
