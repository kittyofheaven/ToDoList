//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import Foundation
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    
    @Published var loginEmail: String = "";
    @Published var loginPassword: String = "";
    @Published var errorMessage: String = "";
    
    init(){}
    
    private func validate() -> Bool{
        errorMessage = "" // buat reset error message
        
        guard !loginEmail.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,          //guard hampir sama kayak if search yt aja
              !loginPassword.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            errorMessage = "Please fill in all fields."
            return false
        }
        
        guard loginEmail.contains("@") && loginEmail.contains(".") else {
            errorMessage = "Please input a valid email."
            return false
        }
        
        return true
    }
    
    func login(){
        guard validate() else{
            return
        }
        
        Auth.auth().signIn(withEmail: loginEmail, password: loginPassword)
        
        print("login success")
    }
    
}
