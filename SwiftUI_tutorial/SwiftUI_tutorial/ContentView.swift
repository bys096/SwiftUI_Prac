//
//  ContentView.swift
//  SwiftUI_tutorial
//
//  Created by 반영서 on 2023/07/02.
//

import SwiftUI

struct Friend: Identifiable {
    var id: Int
    var name: String
}

struct ContentView: View {
//    @State var counter = 0
    let friends: [Friend] = [Friend(id: 0, name: "Dal"),
                             Friend(id: 1, name: "Mark"),
                             Friend(id: 2, name: "Japan Guy"),
                             Friend(id: 3, name: "Myself"),]
    var body: some View {
//        VStack {
//            Text("The number is")
//            Text("\(counter)").font(.largeTitle)
//            HStack {
//                Button(action: plus) {
//                    Text("Add")
//                }
//                Button(action: minus) {
//                    Text("Remove")
//                }
//            }
//        }
        NavigationView {
            List(friends) { friend in
                NavigationLink(destination:DetailView()){
                    Text(friend.name)
                }
                
                
            }.navigationTitle(Text("My Friends"))
        }
        
    }
//    func plus() {
//        counter = counter + 1
//    }
//    func minus() {
//        counter = counter - 1
//    }
}

struct DetailView: View {
    var body: some View {
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
                   
    }
}
