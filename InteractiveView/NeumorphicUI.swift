//
//  NeumorphicUI.swift
//  InteractiveView
//
//  Created by Duncan Adjei on 02/04/2020.
//  Copyright © 2020 Duncan Adjei. All rights reserved.
//

import SwiftUI

struct NeumorphicUI: View {
    var body: some View {
        ZStack(alignment: .top) {
            
            ScrollView {
                VStack {
                    
                    
                    HStack{
                        Text("Library")
                            .font(.system(size: 25))
                            .foregroundColor(Color("deepGray"))
                        Spacer()
                    }
                    .padding(.top,25)
                    HStack{
                        HStack{
                            Image("book1")
                                .resizable()
                                .frame(width: 140, height: 180, alignment: .center)
                                .padding()
                            
                        }
                        .frame(width: 160, height: 200, alignment: .center)
                        .background(Color("neuInner")) .cornerRadius(20)
                        .shadow(color: Color("heavyFont").opacity(0.15), radius: 10, x: 5, y:5)
                        .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
                        Spacer()
                        
                        HStack{
                            Image("book2")
                                .resizable()
                                .frame(width: 140, height: 180, alignment: .center)
                                .padding()
                            
                        }
                        .frame(width: 160, height: 200, alignment: .center)
                        .background(Color("neuInner")) .cornerRadius(20)
                        .shadow(color: Color("heavyFont").opacity(0.15), radius: 10, x: 5, y:5)
                        .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
                        
                    }.padding(.top)
                    HStack{
                        Text("Recommended for you")
                            .font(.system(size: 25))
                            .foregroundColor(Color("deepGray"))
                        Spacer()
                    }
                    .padding(.top,25)
                    RecommendedView()
                    RecommendedView(bookName: "book4", bookTitle:"Between the World and Me", author:"TA- Nehisi")
                    HStack{
                        Text("")
                            .padding()
                        
                    }
                    .frame(width: 350, height: 200, alignment: .center)
                    .background(Color("neuInner")) .cornerRadius(20)
                    .shadow(color: Color("heavyFont").opacity(0.15), radius: 15, x: 20, y: 20)
                    .shadow(color: Color.white.opacity(0.5), radius: 30, x: -20, y: -20)
                    .padding(.top,40)
                    
                    
                }
                .padding(.top,100)
                .padding(.leading, 30)
                .padding(.trailing,30)
            }
            
            
            HStack{
                TopButtons()
                Spacer()
                TopButtons(iconName: "magnifyingglass")
            }
            .padding(.top,50)
            .padding(.leading, 30)
            .padding(.trailing, 30)
            .background(Color("neuInner"))
            
            VStack{
                Spacer()
                HStack{
                    NavBarButton(iconName: "house.fill")
                    Spacer()
                    InnerButton()
                    Spacer()
                    NavBarButton(iconName: "pencil")
                    Spacer()
                    NavBarButton(iconName: "person.fill")
                }
                .padding(.bottom,50)
                .padding(.top)
                .padding(.leading, 20)
                .padding(.trailing, 20)
                .background(Color("neuInner"))
            }
        }
        .background(Color("neuInner"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct NeumorphicUI_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicUI()
    }
}

struct InnerButton: View {
    var body: some View {
        HStack {
            Button(action: {}){
                HStack{
                    Image(systemName:"book")
                        .resizable()
                        .frame(width: 25, height: 20, alignment: .center)
                }
                .frame(width: 30, height: 8)
                .padding(25)
                .foregroundColor(Color("deepGray"))
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color(red: 236/255, green: 234/255, blue: 235/255), lineWidth: 4)
                        .shadow(color: Color(red: 192/255, green: 189/255, blue: 191/255), radius: 3, x: 5, y: 5)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 15)
                    )
                        .shadow(color: Color.white, radius: 2, x: -2, y: -2)
                        .clipShape(
                            RoundedRectangle(cornerRadius: 15)
                    )
                )
                    .background(Color("neuInner"))
                    .cornerRadius(20)
            }}
    }
}

struct TopButtons: View {
    var iconName = "text.alignright"
    var body: some View {
        HStack{
            Button(action: {}) {
                Image(systemName: iconName)
                    .foregroundColor(Color.black)
            }
            .frame(width: 50, height: 50, alignment: .center)
            .background(Color("neuInner")) .cornerRadius(15)
            .shadow(color: Color("heavyFont").opacity(0.15), radius: 10, x: 5, y:5)
            .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
            
            
            
        }
    }
}

struct NavBarButton: View {
    var iconName = "book"
    var body: some View {
        HStack{
            Button(action: {}) {
                Image(systemName:iconName)
                    .foregroundColor(Color.black)
            }
            .frame(width: 80, height: 50, alignment: .center)
            .background(Color("neuInner")) .cornerRadius(15)
            .shadow(color: Color("heavyFont").opacity(0.15), radius: 10, x: 5, y:5)
            .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
            
            
            
        }
    }
}

struct RecommendedView: View {
    var bookName = "book3"
    var bookTitle = "Upstairs of the White House"
    var author = "J. B. West"
    var body: some View {
        HStack{
            HStack{
                Image(bookName)
                    .resizable()
                    .frame(width: 140, height: 180, alignment: .center)
                    .padding()
                
            }
            .frame(width: 160, height: 200, alignment: .center)
            .background(Color("neuInner")) .cornerRadius(20)
            .shadow(color: Color("heavyFont").opacity(0.15), radius: 10, x: 5, y:5)
            .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
            Spacer()
            
            VStack{
                HStack{
                    
                    VStack(alignment: .leading) {
                        
                        Text(bookTitle)
                        
                        Text(author)
                            .font(.system(size:14  )).foregroundColor(Color("deepGray"))
                        HStack{
                            ForEach(0..<4) { item in
                                Image(systemName: "star.fill")
                                    .resizable()
                                    .frame(width: 13, height: 13, alignment:.center)
                                    .foregroundColor(Color("deepG ray"))
                                
                            }
                            Image(systemName: "star.lefthalf.fill")
                                .resizable()
                                .frame(width: 13, height: 13, alignment:.center)
                                .foregroundColor(Color("deepGray"))
                        }
                        HStack{
                            Image(systemName:"eye.fill")
                                .resizable()
                                .frame(width: 12, height: 9,     alignment:.center)
                                .foregroundColor(Color("deepGray"))
                            Text("15K")
                                .font(.system(size:11))
                                .foregroundColor(Color("deepGray"))
                            Image(systemName:"arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 9, height: 10, alignment:.center)
                                .foregroundColor(Color("deepGray"))
                            Text("20")
                                .font(.system(size:11))
                                .foregroundColor(Color("deepGray"))
                        }
                        Text("2018: 295 pages")
                            .foregroundColor(Color("deepGray"))
                            .font(.system(size:11))
                        
                        
                        
                    }.padding(10)
                    
                }
                .frame(width: 170, height: 120, alignment: .center)
                .background(Color("neuInner")) .cornerRadius(20)
                .shadow(color: Color("heavyFont").opacity(0.15), radius: 10, x: 5, y:5)
                .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
                
                Spacer()
                HStack{
                    Spacer()
                    HStack{
                        Text("Read")
                            .padding()
                            .foregroundColor(Color("deepGray"))
                        
                    }
                    .frame(width: 100, height: 60, alignment: .center)
                    .background(Color("neuInner")) .cornerRadius(15)
                    .shadow(color: Color("heavyFont").opacity(0.15), radius: 10, x: 5, y:5)
                    .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
                    Spacer()
                    HStack{
                        Image(systemName:"doc.text.fill")
                            .foregroundColor(Color("deepGray"))
                        
                    }
                    .frame(width: 60, height: 60, alignment: .center)
                    .background(Color("neuInner")) .cornerRadius(15)
                    .shadow(color: Color("heavyFont").opacity(0.15), radius: 10, x: 5, y:5)
                    .shadow(color: Color.white.opacity(0.5), radius: 6, x: -8, y: -8)
                    Spacer()
                }
            }
            
            
        }.padding(.top)
    }
}
