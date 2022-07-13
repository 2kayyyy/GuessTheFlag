//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 12/07/2022.
//

import SwiftUI

struct ContentView: View {
    var ans: String
    var body: some View {
        
        NavigationView {
            VStack(spacing: 40){
                        VStack(spacing: 20) {
                            Text("Guess The Flag")
                                .lilacTitle()
                            
                            Text("Are You Ready To Play The Game?")
                                .foregroundColor(Color("AccentColor"))
                        }
                NavigationLink {
                    GameView()
                } label: {
                    PrimaryButton(text: "LET'S GO!")
                }
                        
                    }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        .edgesIgnoringSafeArea(.all)
                    .background(Color(red: 0.98, green: 0.93, blue: 0.85))
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(ans: "ans")
    }
}
