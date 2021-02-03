//
//  Additemview.swift
//  To Do List
//
//  Created by Student on 2/2/21.
//

import SwiftUI

struct Additemview: View {
    @ObservedObject var toDoList: ToDolIST
    @State private var priority = ""
    @State private var description = ""
    @State private var dueDate = Date()
    @Environment(\.presentationMode) var presentationMode
    static let priorties = ["High", "Medium", "Low"]
    var body: some View {
        NavigationView {
            Form {
                Picker("Priority", selection: $priority) {
                    ForEach(Self.priorties, id: \.self) { priority in
                        Text(priority)
                    }
                }
            }
        }
    }
    
    struct Additemview_Previews: PreviewProvider {
        static var previews: some View {
            Additemview(toDoList: ToDoList())
        }
    }
