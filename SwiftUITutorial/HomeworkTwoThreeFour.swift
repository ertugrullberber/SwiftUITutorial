//
//  HomeworkTwo.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 27.06.2022.
//

import SwiftUI

struct HomeworkTwo: View {
    
    @State var dizi : [String] = ["ali", "ayse", "mehmet", "asli", "tuncay", "tarik", "ertugrul"]
    
    @State var diziDelete : [String] = []
    
    var body: some View {
        VStack{
            Text("Item Count: \(dizi.count)")
            ForEach(dizi,  id: \.self) {item in
                Text(item)
            }
            VStack{
                Button(action: {
                    self.dizi = diziDelete
                    print("All item deleted")
                }, label: {
                    Text("Delete All Item")
                })
            }
        }
        
    }
}

struct HomeworkTwo_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkTwo()
    }
}
