//
//  ContentView.swift
//  Img
//
//  Created by Deepanshu Yadav on 21/04/20.
//  Copyright © 2020 Deepanshu Yadav. All rights reserved.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            NavigationView{
                HomeView()
                    .navigationBarTitle("Picturegram")
                    .navigationBarItems(leading: Button(action: {
                        
                    }, label: {
                        Image(systemName: "camera").resizable()
                            .frame(width: 30, height: 25)
                    }), trailing:
                        HStack{
                            Button(action: {
                                
                            }) {
                                Image(systemName: "tv").resizable()
                                    .frame(width: 30, height: 25)
                            }
                            Button(action: {
                                
                            }) {
                                Image(systemName: "paperplane").resizable()
                                    .frame(width: 30, height: 25)
                            }
                        }
                )
                
            }
            .tabItem {
                Image(systemName: "house")
            }
            Text("Find").tabItem {
                Image(systemName: "magnifyingglass")
            }
            Text("Create").tabItem {
                Image(systemName: "plus.square")
            }
            Text("Likes").tabItem {
                Image(systemName: "heart")
            }
            Text("Profile").tabItem {
                Image(systemName: "person")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





