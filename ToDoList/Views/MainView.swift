//
//  ContentView.swift
//  ToDoList
//
//  Created by Hazel Handrata on 22/12/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var mainViewModel = MainViewViewModel()
    
    var body: some View {
        
        if mainViewModel.isSignedIn, !mainViewModel.currentUserId.isEmpty {
            
            TabView{ // buat ngasih bar dibawahnya
                ToDoListView(userId : mainViewModel.currentUserId)
                    .tabItem {
                        Label("Home", systemImage : "house")
                    }
                
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage : "person.circle")
                    }
            }
             
        } else {
            NavigationView {
                LoginView()
            }
        }
    }
}

#Preview {
    MainView()
}
