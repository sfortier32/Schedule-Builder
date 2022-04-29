//
//  cs325View.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/24/22.
//

import SwiftUI

struct cs325View_Preview : PreviewProvider {
    static var previews : some View {
        cs325View()
    }
}


struct cs325View: View {
    var body: some View {
        ZStack {
            BackgroundRect()
                .background(Color.infoBlue)
                .foregroundColor(.white)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Description: ")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding(.bottom, 1)
                    Text("In this course we examine the important problems in Usability, Human Computer Interaction, User Interfaces, and Human Centered Computing. We will examine elements of HCI history, human information processing capabilities, HCI design, user interface prototyping methods and new applications and directions in human computer interaction.")
                        .font(.custom("Inter-Regular", size: 17))
                
                    Text("Seats:")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding([.top, .bottom], 1)
                    Text("16 Available\n110 Seats")
                    .padding(.bottom, 1)
                
                    Text("Information: ")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding([.top, .bottom], 1)
                    Text("3 Credits\nCheryl Swanier\nTuesday, Thursday\n4:00pm - 5:15pm @ ILC S131")
                
                    VStack(alignment: .leading) {
                        Text("Ratings:")
                            .font(.custom("Inter-SemiBold", size: 20))
                            .padding([.top, .bottom], 1)
                        HStack {
                            Text("Professor: 4.7")
                            Spacer()
                            Text("Class: 4.5")
                            Spacer()
                        }
                    }
                }.padding(sides: [.left, .right], value: 20)
                    .frame(height: 600)
                    .position(x: 207, y: 260)
            }.position(x: 207, y: 625)
                
            VStack {
                HStack {
                    Text("CS 325: Into to\nHuman-Computer Interaction")
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
