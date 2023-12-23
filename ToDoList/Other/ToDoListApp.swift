//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Hazel Handrata on 22/12/23.
//

import SwiftUI
import FirebaseCore



@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
