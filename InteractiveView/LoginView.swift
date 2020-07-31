//
//  LoginView.swift
//  InteractiveView
//
//  Created by Duncan Adjei on 31/03/2020.
//  Copyright © 2020 Duncan Adjei. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        ZStack{
            TitleView()
            LoginComponents()
                .offset(x:0,y:40)
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}



struct TitleView: View {
    var body: some View {
        VStack {
            VStack {
                HStack(alignment: .center) {
                    Image("img")
                        .resizable()
                        .frame(width:32, height: 32)
                    Text("shaq")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.orange)
                        .padding(.trailing,15)
                }
                .padding(.top, 30)
                .padding()
                Text("Welcome Back!")
                    .font(.title)
                    .fontWeight(.medium)
                    .padding(.top, 50)
                Spacer()
                
            }
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("SIGN UP HERE")
                    .fontWeight(.medium)
                    .font(.headline)
                    .foregroundColor(Color.orange)
            }
            .frame(width: 350, height: 30)
            .padding()
            .border(Color.orange, width: 2)
            .cornerRadius(6)
            .padding(.bottom, 30)
        }
    }
}

struct LoginComponents: View {
    
    var body: some View {
        VStack(spacing: 20.0){
            TextField("Username",text:.constant(""))
                .padding()
                .background(Color("textFieldBackground"))
                .cornerRadius(6)
                .padding(.horizontal)
            
            TextField("Password",text:.constant(""))
                .padding()
                .background(Color("textFieldBackground"))
                .cornerRadius(6)
                .padding(.horizontal)
            
            
            HStack(alignment: .top) {
                Text("Remember password and auto login")
                    .multilineTextAlignment(.leading)
                    .padding(.leading)
                    .font(.subheadline)
                Spacer()
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("LOGIN")
                    .fontWeight(.medium)
                    .font(.headline)
                    .foregroundColor(Color.white)
            }
            .frame(width: 350, height: 30, alignment:.center)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("orangeLight"), Color("orangeDeep")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(6)
            .padding(.top, 20)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Forgot your password")
                    .font(.subheadline)
                    .foregroundColor(Color.orange)
                    .padding(.top, 20)
            }
        }
    }
}

