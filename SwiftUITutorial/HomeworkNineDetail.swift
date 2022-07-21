//
//  HomeworkNineDetail.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 28.06.2022.
//
import SwiftUI
import Alamofire

struct HomeworkNineDetail: View {
    var id: Int
    
    @State var diziDetail : Dizi = Dizi(userId: 6, id: 6, title: "", completed: false)
    
    var body: some View {
        VStack{
            Text(String(diziDetail.userId))
                .padding()
            Text(String(diziDetail.id))
                .padding()
            Text(diziDetail.title)
                .padding()
            Text(String(diziDetail.completed))
                .padding()
        }.onAppear(){
            let request = AF.request("https://jsonplaceholder.typicode.com/todos/\(id)")
            request.responseDecodable(of: Dizi.self) {
                response in
                diziDetail = response.value!;
            }
        }
    }
}


