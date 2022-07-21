//
//  HomeworkTen.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 29.06.2022.
//

import SwiftUI
import Alamofire


struct HomeworkTen: View {
    @State var brandName : String = ""
    @State var connectionName : String = ""
    @State var connectionTitle : String = ""
    
    var body: some View {
        VStack{
            TextField("Company Name: ",
                      text: $brandName
            )
            TextField("Contact Name: ",
                      text: $connectionName
            )
            TextField("Contact Title: ",
                      text: $connectionTitle
            )
            
            Button("Add") {
                let newTen : [String : Any] = [
                    "companyName" : brandName,
                    "contactName" : connectionName,
                    "contactTitle": connectionTitle
                    
                ]
                
                AF.request("https://northwind.vercel.app/api/suppliers", method: .post, parameters: newTen, encoding: JSONEncoding.default).responseDecodable(of: Ten.self) {response in print(response.value!)}
                
            }
        }
    }
}

struct HomeworkTen_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkTen()
    }
}
