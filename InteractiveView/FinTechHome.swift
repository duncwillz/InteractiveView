//
//  FinTechHome.swift
//  InteractiveView
//
//  Created by Duncan Adjei on 29/03/2020.
//  Copyright © 2020 Duncan Adjei. All rights reserved.
//

import SwiftUI

struct FinTechHome: View {
    var body: some View {
        ZStack() {
            HeaderComponent()
            VStack(alignment: .leading){
                Headers(title:"Amount")
                    .padding(.top)
                AmountView()
                Headers(title: "To")
                    .padding(.top,10)
                AvatarView()
                Headers(title: "From")
                    .padding(.top,10)
                Spacer()
                  CreditCardView()
                        .padding()
                    .padding(.leading,7)
                Spacer()
                HStack{
                    ButtonView()
                }
                .padding(.bottom)
                Spacer()
            }
            .frame(width: UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/1.5)
            .background(Color.white)
            .cornerRadius(20)
            .padding(20)
            
        }
                    .padding()
            .background(Color("deepBlue"))
            .edgesIgnoringSafeArea(.all)
        
    }
}

struct FinTechHome_Previews: PreviewProvider {
    static var previews: some View {
        FinTechHome()
    }
}

struct HeaderComponent: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "arrow.left").resizable()
                    .frame(width: 23, height: 17)
                    .foregroundColor(.white)
                Text("Review")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.leading, 15)
                Spacer()
                
            }
            .padding(.leading, 20)
            .padding(.top)
            Spacer()
            HStack{
                Text("Do you need some help?")
                    .fontWeight(.bold)
                    .foregroundColor(Color("textFieldBackground"))
                    .opacity(0.4)
            }.padding(.bottom)
        }
        .padding(.top, 40)
    }
}

struct Headers: View {
    var title = "String"
    var body: some View {
        HStack(alignment: .top) {
            Text(title)
                .multilineTextAlignment(.leading)
                .padding(.leading, 25)
                .padding(.top)
                .font(.headline)
                .foregroundColor(Color("headerColor"))
            Spacer()
        }
    }
}



struct AmountView: View {
    var body: some View {
        Text("$2,600")
            .fontWeight(.bold)
            .multilineTextAlignment(.leading)
            .padding(.leading, 25)
            .padding(.top)
            .font(.system(size: 40))
            .foregroundColor(Color("heavyFont"))
    }
}

struct AvatarView: View {
    var body: some View {
        HStack{
            Image("me").resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .shadow(radius: 10)
            Text("All the days look the same")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color("heavyFont"))
                .padding(.leading, 10)
        }
        .padding(.leading, 25)
    }
}

struct ButtonView: View {
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("Send now")
                .fontWeight(.medium)
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: UIScreen.main.bounds.width/1.4, height: 50, alignment:.center)
        .background(Color("deepBlue"))
        .cornerRadius(15)
        .padding(.trailing,25)
        .padding(.leading, 25)
    }
}
