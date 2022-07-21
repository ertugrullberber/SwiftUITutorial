
//
//  HomeworkFive.swift
//  SwiftUITutorial
//
//  Created by Ertugrul Berber on 27.06.2022.
//

import SwiftUI
import Foundation

struct HomeworkFive: View {

    var list : [user] = [user(name: "ertugrul", surname: "berber", email: "ertugrulberber3461"),
                user(name: "ahmet", surname: "berber", email: "ahmetberber3461"),
                user(name: "mehmet", surname: "berber", email: "mehmetberber3461@"),
                user(name: "ayse", surname: "berber", email: "ayseberber3461"),
                user(name: "mine", surname: "berber", email: "mineberber3461")]
    


    struct user : Hashable {
        var id : UUID = UUID()
        var name : String
        var surname : String
        var email :  String

    }

    var body: some View {
        VStack{
            List(list, id: \.self) { item in
                Text(item.name)
                }
        }
        }

    }


struct HomeworkFive_Previews: PreviewProvider {
    static var previews: some View {
        HomeworkFive()
    }
}
