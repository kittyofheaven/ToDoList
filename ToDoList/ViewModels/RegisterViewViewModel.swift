//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class RegisterViewViewModel: ObservableObject{
    @Published var registerFullName:String = "";
    @Published var registerEmail:String = "";
    @Published var registerPassword:String = "";
    @Published var confirmRegisterPassword:String = "";
    @Published var errorMessage:String = "";
    
    init (){}
    
    private func validate() -> Bool{
        errorMessage = ""
        
        guard !registerFullName.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              !registerEmail.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              !registerPassword.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty,
              !confirmRegisterPassword.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            
            errorMessage = "Please fill in all field!"
            return false
        }
        
        guard registerEmail.contains("@") && registerEmail.contains(".") else {
            errorMessage = "Please input a valid email."
            return false
        }
        
        guard registerPassword.count >= 8 else {
            
            errorMessage = "Need atleast 8 or more character of password!"
            return false
        }
        
        guard (registerPassword==confirmRegisterPassword) else {
            
            errorMessage = "Password and confirmation password are not the same!"
            return false
        }
        
        return true
    }
    
    private func insertUserRecord(id: String){
        
        let newUser = UserModel(id: id,
                                name: registerFullName,
                                email: registerEmail,
                                joined: Date().timeIntervalSince1970)
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
    
    func register(){
        guard validate() else {
            return
        }
        
        // register
        
        Auth.auth().createUser(withEmail: registerEmail, password: confirmRegisterPassword){ [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
        
        
    }
}
