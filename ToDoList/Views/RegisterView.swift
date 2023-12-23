//
//  RegisterView.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import SwiftUI

struct RegisterView: View {
    @State var registerFullName:String = "";
    @State var registerEmail:String = "";
    @State var registerPassword:String = "";
    @State var confirmRegisterPassword:String = "";
    
    var body: some View {
        VStack{
            //Header
            HeaderView(title: "Registration", subtitle: "Get Things in Here Done !!!", rotationDegrees: -15, backgroundColor: Color("SecondaryColor"))
                .offset(y:-40)
            
            //Login Form
            ZStack{
                Form{
                    TextField("Full Name", text: $registerFullName)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    
                    TextField("Email Adress", text: $registerEmail)
                        .autocorrectionDisabled()
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)

                    SecureField("Password", text: $registerPassword)
                    
                    SecureField("Confirm Password", text: $confirmRegisterPassword)
                    
                    Button(action: {
                        
                        //Attempt Register
                        
                    }, label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 5)
                            Text("Register")
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
                Text("Already have an account ?")
                NavigationLink("Login", destination: LoginView())
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            .padding(.bottom, 30)
        }
    }
}

#Preview {
    RegisterView()
}
