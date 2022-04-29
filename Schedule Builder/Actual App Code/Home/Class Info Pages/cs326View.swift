//
//  cs326View.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/26/22.
//

import SwiftUI

struct cs326View_Preview : PreviewProvider {
    static var previews: some View {
        cs326View()
    }
}

struct cs326View : View {
    var body: some View {
        ZStack {
            BackgroundRect()
                .background(Color.infoGreen)
                .foregroundColor(.white)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Description: ")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding(.bottom, 1)
                    Text("The World Wide Web was proposed originally as a collection of static documents inter-connected by hyperlinks. Today, the web has grown into a rich platform, built on a variety of protocols, standards, and programming languages, that aims to replace many of the services traditionally provided by a desktop operating system.  This course will study core technologies, concepts, and techniques behind the creation of modern web-based systems and applications.")
                        .font(.custom("Inter-Regular", size: 17))
                
                    Text("Seats:")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding([.top, .bottom], 1)
                    Text("4 Available\n98 Seats")
                    .padding(.bottom, 1)
                
                    Text("Information: ")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding([.top, .bottom], 1)
                    Text("4 Credits\nEmergy Berger\nMonday\n4:00pm - 5:00pm @ Goessmann Lab Rm 20")
                
                    VStack(alignment: .leading) {
                        Text("Ratings:")
                            .font(.custom("Inter-SemiBold", size: 20))
                            .padding([.top, .bottom], 1)
                        HStack {
                            Text("Professor: 4.0")
                            Spacer()
                            Text("Class: 5.0")
                            Spacer()
                        }
                    }
                }.padding(sides: [.left, .right], value: 20)
                    .frame(height: 600)
                    .position(x: 207, y: 280)
            }.position(x: 207, y: 625)
                
            VStack {
                HStack {
                    Text("CS 326: Web Programming")
                        .font(.custom("Inter-Bold", size: 30))
                        .foregroundColor(Color("almostBlack"))
                    Spacer()
                }.padding(.top, 75)
                .padding(sides: [.left], value: 20)
                Spacer()
            }
            
        }//ZStack ends
    }
}
