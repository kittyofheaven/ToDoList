//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import SwiftUI

struct ToDoListItemView: View {
    
    @StateObject var toDoListItemViewModel = ToDoListItemViewViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ToDoListItemView()
}
