//
//  DeliveryFrontView.swift
//  InteractiveView
//
//  Created by Duncan Adjei on 30/03/2020.
//  Copyright © 2020 Duncan Adjei. All rights reserved.
//

import SwiftUI

struct DeliveryFrontView: View {
    var body: some View {
        ZStack(alignment: .top) {
            VStack(alignment: .leading){
                Spacer()
                VStack(alignment: .leading){
                    HStack(spacing:2){
                        Text("Hi,")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                        Text("Kwaku Adjei!")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.leading,5)
                            .foregroundColor(Color("orangeLight"))
                            .padding(.trailing,10)
                    }.padding(.top, 70)
                        .padding(.leading)
                    HStack(spacing:2){
                        Text("Get ready for breakfast")
                            .font(.system(size: 18))
                            .fontWeight(.bold)
                            .foregroundColor(Color("headerColor"))
                        
                    }               .padding(.leading)
                        .padding(.top, 5)
                }.padding(.top, 10)
                
                Spacer()
                HStack{
                    Spacer()
                    BlueCardDetailsCard()
                    Spacer()
                    WhiteCardDetailsCard(imageName: "printer", itemName: "Recent", count: "56", itemType: "Items" )
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    WhiteCardDetailsCard()
                    Spacer()
                    WhiteCardDetailsCardType()
                    Spacer()
                }
                
                
                RowHeader()
                BottomView()
                
            }
            ImageWithActionHeader()
            VStack{
                Spacer()
                BottomNavigationView()
            }
        }
        .background(Color("textFieldBackground"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct DeliveryFrontView_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryFrontView()
    }
}

struct BottomNavigationView: View {
    var body: some View {
        HStack{
            HStack{
                Button(action: {}){
                    HStack{
                        Image(systemName: "square.stack.3d.up")
                            .foregroundColor(Color.white)
                        Text("Store")
                            .foregroundColor(Color.white)
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 10)
                    .padding(.trailing, 20)
                    .padding(.leading, 20)
                    .background(Color("orangeLight"))
                    .cornerRadius(20)
                }
                .padding(.leading, 20)
                Spacer()
                Button(action: {}) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color.white)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "line.horizontal.3.decrease.circle")
                        .foregroundColor(Color.white)
                }
                
                Spacer()
                Button(action: {}) {
                    Image(systemName: "person")
                        .foregroundColor(Color.white)
                    
                }
                Spacer()
            }.padding(.bottom)
            
        }
        .frame(  height:105)
        .background(Color("oceanBlue"))
        .cornerRadius(20)
    }
}

struct ImageWithActionHeader: View {
    var body: some View {
        VStack {
            HStack{
                Image("me")
                    .resizable()
                    .frame(width:35, height: 35)
                    .cornerRadius(8)
                Spacer()
                HStack{
                    Image(systemName: "bell")
                        .foregroundColor(Color.white)
                }
                .frame(width:35, height: 35)                    .background(Color("oceanBlue"))
                .cornerRadius(8)
            }.padding()
                .padding(.top,50)
                .background(Color("textFieldBackground"))
        }
    }
}


struct BlueCardDetailsCard: View {
    var body: some View {
        HStack{
            VStack(alignment:.leading){
                Text("Delivery")
                    .fontWeight(.bold)
                    .font(.subheadline)
                    .foregroundColor(Color.white)
                Image("m").resizable()
                    .frame(width: 30, height: 30, alignment: .leading)
                HStack(spacing:0){
                    VStack(alignment: .leading){
                        Text("Update")
                            .font(.system(size: 10))
                            .foregroundColor(Color.white)
                        Text("at 17.17")
                            .font(.system(size: 10))
                            .foregroundColor(Color.white)
                    }.padding(.trailing, 26)
                    HStack{
                        Image(systemName: "car")
                            .foregroundColor(Color.black)
                    }
                    .frame(width:30, height: 30)                    .background(Color.white)
                    .cornerRadius(8)
                }
                
            }
            
        }
        .frame(width: 180, height: 180)
        .background(Color("oceanBlue"))
        .cornerRadius(20)
    }
}


struct WhiteCardDetailsCard: View {
    var imageName = "tray.2"
    var itemName = "Dine in"
    var count = "10"
    var itemType = "Books"
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Image(systemName: imageName)
                    .resizable()
                    .foregroundColor(Color.black)
                    .frame(width:22, height: 22)
                    .cornerRadius(8)
                Text(itemName)
                    .padding(.bottom, 30)
                    .font(.system(size: 15))
                    .foregroundColor(Color("deepGray"))
                
                HStack{
                    Text(count)
                        .fontWeight(.bold)
                        .font(.system(size: 24))
                    
                    Text(itemType)
                        .foregroundColor(Color("deepGray"))
                        .opacity(0.5)
                        .font(.system(size: 18))

                        .padding(.trailing,5)

                }
                .padding(.trailing,30)

                
            }
        }
        .frame(width: 180, height: 180)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct WhiteCardDetailsCardType: View {
    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Image(systemName: "bell")
                    .resizable()
                    .foregroundColor(Color.black)
                    .frame(width:22, height: 22)
                    .cornerRadius(8)
                Text("Explore")
                    .padding(.bottom, 30)
                    .font(.system(size: 18))
                    .foregroundColor(Color("deepGray"))
                
                HStack{
                    Text("4 New!")
                        .fontWeight(.bold)
                        .foregroundColor(Color("orangeLight"))
                        .font(.system(size: 10))
                        .padding(.top,6)
                        .padding(.bottom,6)
                    
                    
                }.padding(.leading, 15)
                    .padding(.trailing, 15)
                    .background(Color("orangeLight").opacity(0.4))
                    
                    .cornerRadius(13)
                
                
            }.padding(.trailing,45)
        }
        .frame(width: 180, height: 180)
        .background(Color.white)
        .cornerRadius(20)
    }
}

struct BottomView: View {
    var body: some View {
        HStack( ){
            VStack(alignment: .center){
                Spacer()
                HStack{
                    HStack(alignment: .top) {
                        Image("br_logo").resizable().frame(width:100, height:50, alignment: .center)
                            .padding(.leading, 60)
                    
                     }
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text("Discount up to")
                            .font(.subheadline)
                            .fontWeight(.bold)
                             .foregroundColor(Color("deepGray").opacity(0.4))
                            Text("20%")
                                .font(.largeTitle)
                                .fontWeight(.bold)
 
                            Text("4 Days remaining")
                        .foregroundColor(Color("orangeLight"))
                                .font(.system(size: 12))
                                .fontWeight(.bold)
                                .padding(.bottom)
                    }
                    Spacer()
                }
                .padding(.bottom, 90)
                .padding(.trailing,60)
                  Spacer()
            }
          
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/3.5)
        .background(Color.white)
            
        .cornerRadius(20)
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 0)
        
    }
}

struct RowHeader: View {
    var body: some View {
        HStack{
            Text("Personal Offer")
                .font(.system(size: 20))
                
                .fontWeight(.bold)
                .foregroundColor(Color("deepGray"))
                .padding()
            Spacer()
            Text("See all   >")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(Color("orangeLight"))
                .padding(.trailing,20)
        }.padding(10)
    }
}
