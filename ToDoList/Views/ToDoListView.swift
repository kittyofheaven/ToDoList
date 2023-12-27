//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import SwiftUI

struct ToDoListView: View {
    let userId: String;
    
    @StateObject var toDoListViewModel = ToDoListViewViewModel()
    
    init(userId: String){
        self.userId = userId
    }
    
    var body: some View {
        NavigationView{
            VStack {
                
            }
            .navigationTitle("To Do List")
        }
    }
}

#Preview {
    ToDoListView(userId: "")
}
