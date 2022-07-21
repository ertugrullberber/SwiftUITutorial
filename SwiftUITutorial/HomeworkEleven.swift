//
//  HomeworkEleven.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 29.06.2022.
//

import SwiftUI

struct HomeworkEleven: View {
    
    @State var count = UserDefaults.standard.integer(forKey: "Tap")

    var body: some View {
        VStack{
            Text("Counter: \(count)")
            
            Button(action: {
                self.count += 1
                UserDefaults.standard.set(self.count, forKey: "Tap")
            }, label: {
                Text("Tab")
            })
                
            

            
        }
    }
}

struct HomeworkEleven_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkEleven()
    }
}
