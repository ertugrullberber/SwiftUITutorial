//
//  HomeworkNine.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 28.06.2022.
//

import SwiftUI
import Alamofire

struct HomeworkNine: View {
    
    @State var dizi: [Dizi] = []
    var body: some View {
        NavigationView{
            VStack{
                Text("Item Number: \(dizi.count)")
                ScrollView(.vertical){
                    ForEach(dizi, id:\.self) {response in
                        NavigationLink(destination: HomeworkNineDetail(id: response.id)){
                            Text(response.title)
                                .padding()
                        }
                        
                    }
                }
                .onAppear(){
                    let request = AF.request("https://jsonplaceholder.typicode.com/todos")
                    request.responseDecodable(of: [Dizi].self){response in
                        dizi = response.value ?? []
                    }
                }
            }
        }
    }
}

struct HomeworkNine_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkNine()
    }
}
