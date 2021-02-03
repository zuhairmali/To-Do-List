//
//  ContentView.swift
//  To Do List
//
//  Created by Student on 2/1/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var toDoList = ToDoList()
    var body: some View {
        NavigationView {
            List {
                Text("First Thing")
                Text("Second Thing")
                Text("Third Thing")
                Text("Fourth Thing")
                Text("Fifth Thing")
            }
            .navigationBarTitle("Things")
                ForEach(toDoList.items) {item in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(item.priority)
                                .font(.headline)
                            Text(item.description)
                        }
                        Spacer()
                        Text(I)
                    }
            }
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
