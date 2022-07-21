//
//  HomeworkOne.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 27.06.2022.
//

import SwiftUI

struct HomeworkOne: View {
    
    @State var score = 0
    @State var score2 = 0
    
    @State var totalScore = 0
    var body: some View {
        
        VStack {
                    TextField("Enter your score", value: $score, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .padding()
            TextField("Enter your score", value: $score2, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Button(action: {
                totalScore = score * score2
                print("Your score was\(totalScore).")
            }, label: {
                Text("Button").textFieldStyle(.roundedBorder)
            }).padding()
            
            Text("Your score is \(totalScore)")
                .padding()
                }
    }
}

struct HomeworkOne_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkOne()
    }
}
