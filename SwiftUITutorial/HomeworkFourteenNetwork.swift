//
//  HomeworkFourteenNetwork.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 29.06.2022.
//

import Foundation
import Alamofire

class Network {
    
    func getAll(completion: @escaping ([FourTeen]) -> Void) {
        let request = AF.request("https://jsonplaceholder.typicode.com/posts");
        
        request.responseDecodable(of: [FourTeen].self) {response in
            
            completion(response.value!)
        }
    }
    
}
