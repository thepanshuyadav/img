//
//  PostCard.swift
//  Img
//
//  Created by Deepanshu Yadav on 21/04/20.
//  Copyright © 2020 Deepanshu Yadav. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI
import Firebase

struct PostCard: View{
    var postID = ""
    var user = ""
    var postImage = ""
    var body: some View{
        VStack(alignment: .leading,content:{
            HStack{
                Image("demo")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                Text(user)
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "info.circle").resizable()
                        .frame(width: 20, height: 20)
                }
            }
            Image("demo3")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .frame(height: 350)
                .frame(maxWidth: .infinity)
            
            HStack{
                Button(action: {
                    
                }) {
                    Image(systemName: "heart").resizable()
                        .frame(width: 30, height: 25)
                }.padding(5)
                Button(action: {
                    
                }) {
                    Image(systemName: "bubble.left").resizable()
                        .frame(width: 30, height: 25)
                }.padding(5)
                Spacer()
                Button(action: {
                    
                }) {
                    Image(systemName: "bookmark").resizable()
                        .frame(width: 20, height: 25)
                }.padding()
            }
            Text("100 likes").padding(.top, 8)
            Text("View all 3 comments")
        })
            .padding(10)
    }
}
