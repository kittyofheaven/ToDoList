//
//  LoginView.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var loginEmail: String = "";
    @State var loginPassword: String = "";
    
    var body: some View {
        
        VStack{
            //Header
            ZStack{
                Rectangle()
                    .foregroundColor(.pink)
                    .rotationEffect(Angle(degrees: 15))
                
                VStack{
                    Text("To Do List")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .bold()
                    
                    Text("Get Things in Here Done !!!")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
                }
                .offset(/*@START_MENU_TOKEN@*/CGSize(width: 10.0, height: 10.0)/*@END_MENU_TOKEN@*/)
                
            }
            .frame(width: UIScreen.main.bounds.width * 3, //UIScreen.main.bounds.width itu widthnya 1 screen.
                   height: 300)
            .offset(y: -95) //buat mindahin bisa x atau y
             
            
            //Login Form
            ZStack{
                Form{
                    
                    TextField("Email Adress", text: $loginEmail)

                    SecureField("Password", text: $loginPassword)
                    
                    Button(action: {
                        //Attempt Login
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
                
            
            
            
            VStack{
                Text("New around here ?")
                NavigationLink("Create New Account", destination: RegisterView())
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding(.bottom, 30)
            
            
            
            //Create Account
            
//            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
