//
//  HomeworkFourteen.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 29.06.2022.
//

import SwiftUI
import Alamofire

struct HomeworkFourteen: View {
    
    @State var fourTeen : [FourTeen] = []
    
    var body: some View {
        VStack{
            ScrollView(.vertical){
                ForEach(fourTeen, id:\.self) {item in
                    Text(item.title)
                    Text(item.body)
                    Text(String(item.id))
                    
                }.listStyle(.grouped)
            }
            
        }.onAppear() {
            let network = Network()
            network.getAll() {data in
                fourTeen = data
            }
        }
            
    }
}

struct HomeworkFourteen_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkFourteen()
    }
}



