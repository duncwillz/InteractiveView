//
//  NativeComponents.swift
//  InteractiveView
//
//  Created by Duncan Adjei on 03/04/2020.
//  Copyright © 2020 Duncan Adjei. All rights reserved.
//

import SwiftUI

struct NativeComponents: View {
    var body: some View {
        TabView{
            
        
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Let's Go")
            }
            
            Text("The Last Tab")
                .tabItem {
                    Image(systemName: "flame")
                        .foregroundColor(Color("orangeLigth"))
                    Text("Health Tips")
            }
            
            LegGoView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
            }
            
        }
        
    }
}

struct NativeComponents_Previews: PreviewProvider {
    static var previews: some View {
        NativeComponents()
    }
}
