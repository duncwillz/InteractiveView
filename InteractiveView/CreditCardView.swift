//
//  CreditCardView.swift
//  InteractiveView
//
//  Created by Duncan Adjei on 30/03/2020.
//  Copyright © 2020 Duncan Adjei. All rights reserved.
//

import SwiftUI

struct CreditCardView: View {
    var body: some View {
 
                    CardDetails()
 
        
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
    }
}




struct CardDetails: View {
    var body: some View {
        return VStack(alignment: .leading){
            
            HStack{
                Text("MinoBank")
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                Text("VISA")
                    .foregroundColor(.white)
                    .font(.headline)
                    .fontWeight(.bold)
                    .italic()
                
            }.padding(.top,10)
            Spacer()
            Text("DUNCAN J. ADJEI")
                .foregroundColor(.white)
                .font(.headline)
                .fontWeight(.bold)
                .opacity(0.6)
            
            HStack{
                Text("**** **** **** 1234")
                    .foregroundColor(.white)
                    
                    .padding(.top)
                Spacer()
                Text("***")
                    .foregroundColor(.white)
                    .padding(.top)
                    .padding(.trailing)
                
            }
            .padding(.bottom, 10)
            
        }
        .frame(width: UIScreen.main.bounds.width/1.55,height: UIScreen.main.bounds.height/5.8,alignment:.center)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color("deepBlue"), Color("heavyFont")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
        .overlay(Image("mino").resizable().padding(20).opacity(0.4))
        .shadow(radius: 10)
        .padding(.bottom)
        .padding(.trailing)
        
    }
}
