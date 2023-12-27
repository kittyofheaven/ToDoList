//
//  LoginView.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginViewModel = LoginViewViewModel( )
    
    var body: some View {
        
        VStack{
            //Header
            HeaderView(title: "To Do List", subtitle: "Get Things in Here Done !!!", rotationDegrees: 15, backgroundColor: Color("MainColor"))
            
            //Login Form
            ZStack{
                Form{
                    
                    TextField("Email Adress", text: $loginViewModel.loginEmail)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)

                    SecureField("Password", text: $loginViewModel.loginPassword)
                    
                    if !loginViewModel.errorMessage.isEmpty {
                        Text(loginViewModel.errorMessage)
                            .foregroundColor(.red)
                    }
                    
                    Button(action: {
                        
                        loginViewModel.login()
                        
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                            Text("Login")
                                .foregroundColor(.white)
                        }
                    })
                    .padding(.top)
                    .padding(.bottom)
                }
                .scrollContentBackground(.hidden)
            }
                
            
            
            //Create Account
            VStack{
                Text("New around here ?")
                NavigationLink("Create New Account", destination: RegisterView())
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding(.bottom, 30)
        }
    }
}

#Preview {
    LoginView()
}
