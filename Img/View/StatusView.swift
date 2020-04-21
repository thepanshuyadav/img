//
//  StatusView.swift
//  Img
//
//  Created by Deepanshu Yadav on 21/04/20.
//  Copyright © 2020 Deepanshu Yadav. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct StatusView: View{
    
    var statusUrl = ""
    var username = ""
    var body : some View{
        ZStack{
            
            AnimatedImage(url: URL(string: statusUrl))
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Text("\(username)")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding()
                    Spacer()
                }
                Spacer()
            }
        }
        
    }
}

