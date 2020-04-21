//
//  StatusCard.swift
//  Img
//
//  Created by Deepanshu Yadav on 21/04/20.
//  Copyright © 2020 Deepanshu Yadav. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct StatusCard: View{
    var imgName=""
    var user=""
    @Binding var show: Bool
    @Binding var user1: String
    @Binding var url: String
    var body: some View{
        VStack{
            AnimatedImage(url: URL(string: imgName))
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(Circle().strokeBorder(Color.pink, lineWidth: 2))
                .shadow(radius: 0.5)
                .padding(1)
                .onTapGesture {
                    self.user1=self.user
                    self.url=self.imgName
                    self.show.toggle()
            }
            Text(user).fontWeight(.ultraLight)
        }
        
    }
}
