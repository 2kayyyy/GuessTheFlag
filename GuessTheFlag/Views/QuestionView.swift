//
//  QuestionView.swift
//  GuessTheFlag
//
//  Created by Aryan Kafle on 12/07/2022.
//

import SwiftUI

struct QuestionView: View {
    
    var allFlags: [FlagData] = FlagData.allFlags
    var body: some View {
        VStack(spacing: 40) {
                HStack {
                    Text("Guess The Flag 🤔")
                        .lilacTitle()
                    Spacer()
                    
                        Text("1 out of 10")
                            .foregroundColor(Color("AccentColor"))
                            .fontWeight(.heavy)
                    
                }
            ProgressBar(progress: 40)
            
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    Spacer()
                    Flag()
                    Spacer()
                }
                Text("What flag is this?")
                    .font(.system(size: 32))
                    .bold()
                    .foregroundColor(.gray)
                
                AnswerRow(answer: Answer(text: random_name, isCorrect: true))
                AnswerRow(answer: Answer(text: random_name1, isCorrect: false))
                AnswerRow(answer: Answer(text: random_name2, isCorrect: false))
                AnswerRow(answer: Answer(text: random_name3, isCorrect: false))
            }
            
            PrimaryButton(text: "Next")
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.98, green: 0.93, blue: 0.85))
        .navigationBarHidden(true)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
            .previewInterfaceOrientation(.portrait)
    }
}
