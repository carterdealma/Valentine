//
//  ContentView.swift
//  Cat
//
//  Created by CARTER MA on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    @State var noButtonText: String = "No"
    @State var noButtonClickedCount : Int = 0
    @State var yesButtonFontSize : Font = .body
    @State var noButtonFontSize : Font = .body
    @State var noButtonColor : Color = Color.red
    
    private func updateYes() -> Void
    {
        
    }
    
    private func updateNo() -> Void
    { 
        if (noButtonClickedCount == 0)
        {
            noButtonText = "Are you sure?"
            yesButtonFontSize = .custom("big1", size: 20)
        }
        else if (noButtonClickedCount == 1)
        {
            noButtonText = "Are you really sure??"
            yesButtonFontSize = .custom("big2", size: 25)
        }
        else if (noButtonClickedCount == 2)
        {
            noButtonText = "Are you ABSOLUTELY sure??"
            yesButtonFontSize = .custom("big3", size: 30)
        }
        else if (noButtonClickedCount == 3)
        {
            noButtonText = "Please, love"
            yesButtonFontSize = .custom("big4", size: 35)
        }
        else if (noButtonClickedCount == 4)
        {
            noButtonText = "Don't be so cold ;-;"
            yesButtonFontSize = .custom("big5", size: 40)
        }
        else if (noButtonClickedCount == 5)
        {
            noButtonText = "I'll do literally anything"
            yesButtonFontSize = .custom("big6", size: 45)
        }
        else if (noButtonClickedCount == 6)
        {
            noButtonText = "bro..."
            yesButtonFontSize = .custom("big7", size: 50)
        }
        else if (noButtonClickedCount == 7)
        {
            noButtonText = "<-- CLICK THIS BUTTON"
            yesButtonFontSize = .custom("big8", size: 55)
        }
        else if (noButtonClickedCount == 8)
        {
            noButtonText = "I am heartbroken"
            yesButtonFontSize = .custom("big9", size: 60)
        }
        else if (noButtonClickedCount == 9)
        {
            noButtonText = "pls reconsider your choice"
            yesButtonFontSize = .custom("big10", size: 65)
        }
        else if (noButtonClickedCount == 10)
        {
            noButtonText = "sofia pls"
            yesButtonFontSize = .custom("big11", size: 70)
        }
        else if (noButtonClickedCount == 11)
        {
            noButtonText = ":("
            yesButtonFontSize = .custom("big12", size: 75)
        }
        else if (noButtonClickedCount == 12)
        {
            noButtonText = "Yes"
            noButtonColor = Color.green
            noButtonFontSize = .custom("big12", size: 75)
        }
        else
        {
            updateYes()
        }
        noButtonClickedCount += 1
    }
    
    var body: some View {
        VStack {
            Image(systemName: "heart")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Will you be my Valentine?")
            HStack
            {
                Button("Yes", action : updateYes)
                    .tint(.green)
                    .foregroundColor(.black)
                    .font(yesButtonFontSize)
                Button(action: updateNo) {
                    Text(noButtonText)
                }
                .tint(noButtonColor)
                .foregroundColor(.black)
                .font(noButtonFontSize)
            }
            .buttonStyle(.bordered)
            .buttonBorderShape(.capsule)
            .padding()
        }
        .padding()
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}
