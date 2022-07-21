//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 27.06.2022.
//

import SwiftUI

struct ContentView: View {
    @State var count : Int = 0
//    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")

    var body: some View {
        VStack{
            Text("Counter: \(count)")
            
            Button(action: {
                self.count += 1
//                UserDefaults.standard.set(self.count, forKey: "Tap")
            }, label: {
                Text("Tab")
            })
                
            

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
