//
//  Home.swift
//  Img
//
//  Created by Deepanshu Yadav on 21/04/20.
//  Copyright © 2020 Deepanshu Yadav. All rights reserved.
//

import SwiftUI
import Firebase
import SDWebImageSwiftUI

struct HomeView:View{
    @ObservedObject var observed = StatusObserver()
    @State var show=false
    @State var user=""
    @State var url=""
    
    var body: some View{
        ScrollView(.vertical, showsIndicators: false){
            VStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(observed.statusList){i in
                            StatusCard(imgName: i.statusImage, user: i.statusUsername, show: self.$show, user1: self.$user, url: self.$url).padding(3)
                        }
                    }
                }
                ForEach(0..<25){_ in
                    PostCard(postID: "1", user: "@thepanshu", postImage: "")
                }
            }
            .animation(.spring())
            .sheet(isPresented: $show) {
                StatusView(statusUrl: self.url, username: self.user)
            }
        }
    }
}
