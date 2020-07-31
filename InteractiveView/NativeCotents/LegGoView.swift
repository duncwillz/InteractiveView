//
//  LegGoView.swift
//  InteractiveView
//
//  Created by Duncan Adjei on 03/04/2020.
//  Copyright © 2020 Duncan Adjei. All rights reserved.
//

import SwiftUI

struct LegGoView: View {
    var body: some View {
        ZStack{
            
            ScrollView {
                VStack(spacing:0){
                    
                    
                    UserProfilePictureView().padding(.leading,30)
                        .padding(.trailing,30)
                    StatusRow()
                        .padding(.top, 30)
                    RowHeaders()
                        .padding(.bottom, 20)
                    StatisticsView()
                    RowHeaders(title:"Latest Entries")
                    HStack(alignment: .center){
                        VStack{
                            ButtonRowView()
                            ButtonRowView(startColor: "heavyFont", endColor: "deepBlue", title: "Afternoon Run!", subTitle: "22,1,km . 10:22 . 12km/h", iconName: "waveform.path.ecg")
                            ButtonRowView(startColor: "lightPink", endColor: "deepPink", title: "Morning Swim", subTitle: "8,1,km . 06:22 . 9km/h", iconName: "wind.snow")
                        }.padding(.trailing)
                        
                        
                        
                    }.padding(.vertical)
                        .padding(.leading,30)
                    
                    
                    
                }
            }.padding(.top,60)
            NavBarAction()
                .padding(.trailing,30)
        }
    }
}

struct LegGoView_Previews: PreviewProvider {
    static var previews: some View {
        LegGoView()
    }
}

struct UserProfilePictureView: View {
    var body: some View {
        HStack{
            Image("me").resizable().frame(width: 128, height: 128, alignment: .center)
                . cornerRadius(100)
            VStack(alignment: .leading){
                Text("Duncan Adjei")
                    .font(.title)
                    .fontWeight(.bold)
                HStack( spacing:30  ){
                    VStack(alignment: .leading){
                        Text("Following")
                            .foregroundColor(Color("deepGray").opacity(0.5))
                        Text("0")
                    }
                    VStack(alignment: .leading){
                        Text("Followers")
                            .foregroundColor(Color("deepGray").opacity(0.5))
                        Text("5K")
                    }
                }
                HStack{
                    Image(systemName: "bolt.circle")
                        .foregroundColor(Color.blue)
                    Text("Advanced")
                        .foregroundColor(Color.blue)
                    Spacer()
                    Text("18,11KM")
                        .font(.system(size:12,weight:.bold))
                    
                }
                ZStack{
                    Divider().frame(height: 4, alignment: .center).background(Color("neuInner"))
                    Divider().frame(width:170,height: 4, alignment: .leading).background(Color.blue)
                        . padding(.trailing,40)
                    
                }
                
                
                
            }.padding(.leading)
        }
        .background(Color.white)
    }
}

struct NavBarAction: View {
    var body: some View {
        VStack {
            HStack(alignment: .top){
                Spacer()
                Button(action: {}) {
                    Image(systemName: "gear").resizable().frame(width: 25, height: 25, alignment: .center)
                    
                }
            }.padding(.top)
                .padding(.bottom)
                .background(Color.white)
            Spacer()
        }
    }
}

struct StatusRow: View {
    var body: some View {
        HStack {
            HStack{
                Image(systemName: "exclamationmark.circle")
                    .foregroundColor(Color.blue)
                Text("Be honest, overestimating won't give results sooner. If you're not sure, keep the default")
                    
                    .font(.system(size:16))
                    .foregroundColor(Color("deepGray").opacity(0.5))
                    .multilineTextAlignment(.leading)
            }.padding()
                .padding(.trailing)
                .padding(.leading)
            
        }
        .background(Color("neuInner").opacity(0.5))
    }
}

struct RowHeaders: View {
    var title = "Statistics"
    var body: some View {
        HStack{
            Text(title)
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Button(action: {}) {
                Text("Show all")
                
            }
        }.padding(.leading,30)
            .padding(.trailing,30)
            .padding(.top, 30)
    }
}

struct StatisticsView: View {
    var body: some View {
        HStack{
            HStack {
                VStack{
                    Text("This Week")
                        .fontWeight(.bold)
                        .padding(.vertical)
                        .padding(.leading, 10)
                    
                    Spacer()
                    HStack(spacing:0) {
                        Text("1850").font(.title).fontWeight(.bold)
                            .padding(.leading)
                            .padding(.vertical)
                        Text("cal")
                            .fontWeight(.bold)
                            .padding(.top,6)
                    }
                }
            }
            
            Image("meter").resizable().frame(width:180, height: 80, alignment: .center)
                .padding(.leading,30)
            Spacer()
        }
        .frame(height: 120)
        .background(Color("meter"))
        .cornerRadius(15)
        .padding(.leading,30)
        .padding(.trailing,30)
    }
}

struct ButtonRowView: View {
    var startColor = "orangeLight"
    var endColor = "orangeDeep"
    var title = "Heart beat"
    var subTitle = "14,1,km . 12:22 . 32km/h"
    var iconName = "heart.circle"
    var body: some View {
        Button(action: {}){
            
            VStack {
                HStack {
                    HStack {
                        Image(systemName: iconName)
                            .resizable()
                            . frame(width: 25, height: 25, alignment: .center)
                            .foregroundColor(Color.white)
                        
                    }.frame(width: 50, height: 50, alignment: .center)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(startColor), Color(endColor)]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(12)
                    VStack(alignment: .leading){
                        Text(title)
                            .foregroundColor(Color.black)
                        Text(subTitle)
                            .font(.system(size:12))
                            .foregroundColor(Color("deepGray").opacity(0.5))
                    }
                    Spacer()
                    Image(systemName:"chevron.right")
                        .foregroundColor(Color("deepGray").opacity(0.5))
                    
                    
                }
                Divider()
            }.padding(.vertical, 5)
                .padding(.trailing,10)
            
        }
    }
}
