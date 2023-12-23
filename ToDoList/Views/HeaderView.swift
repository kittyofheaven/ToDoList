//
//  HeaderView.swift
//  ToDoList
//
//  Created by Hazel Handrata on 23/12/23.
//

import SwiftUI

struct HeaderView: View {
    //add properties
    let title: String;
    let subtitle: String;
    let rotationDegrees: Double;
    let backgroundColor: Color;
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(backgroundColor) //buat ambil color dari Assets.xcassets
                .rotationEffect(Angle(degrees: rotationDegrees))
            
            VStack{
                Text(title)
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .bold()
                
                Text(subtitle)
                    .foregroundColor(.white)
                    .font(.system(size: 20))
            }
            .offset(/*@START_MENU_TOKEN@*/CGSize(width: 10.0, height: 10.0)/*@END_MENU_TOKEN@*/)
            
        }
        .frame(width: UIScreen.main.bounds.width * 3, //UIScreen.main.bounds.width itu widthnya 1 screen.
               height: 300)
        .offset(y: -95) //buat mindahin bisa x atau y
    }
}

#Preview {
    HeaderView(title: "To Do List", subtitle: "Get Things in Here Done !!!", rotationDegrees: 15, backgroundColor: Color("MainColor"))
}
