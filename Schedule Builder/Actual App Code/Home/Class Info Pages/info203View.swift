//
//  info203View.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/26/22.
//

import SwiftUI

struct info203View_Preview : PreviewProvider {
    static var previews: some View {
        info203View()
    }
}

struct info203View : View {
    var body: some View {
        ZStack {
            BackgroundRect()
                .background(Color.infoDarkBlue)
                .foregroundColor(.white)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Description: ")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding(.bottom, 1)
                    Text("The course will cover the technical foundations and use of today's communication networks, particularly the internet. It will also address key social, policy, economic, and legal aspects of these networks, their use (and abuse) and their regulation. This course covers computer science topics, but all material will be presented in a way that is accessible to an educated audience with or without a strong technical background.")
                        .font(.custom("Inter-Regular", size: 17))
                
                    Text("Seats:")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding([.top, .bottom], 1)
                    Text("29 Available\n55 Seats")
                    .padding(.bottom, 1)
                
                    Text("Information: ")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding([.top, .bottom], 1)
                    Text("3 Credits\nMohammadhassan Hajiesmaili\nTuesday\n1:00pm - 2:00pm @ CompSci Bldg Rm 142")
                
                    VStack(alignment: .leading) {
                        Text("Ratings:")
                            .font(.custom("Inter-SemiBold", size: 20))
                            .padding([.top, .bottom], 1)
                        HStack {
                            Text("Professor: 4.3")
                            Spacer()
                            Text("Class: 3.7")
                            Spacer()
                        }
                    }
                }.padding(sides: [.left, .right], value: 20)
                    .frame(height: 700)
                    .position(x: 207, y: 283)
            }.position(x: 207, y: 625)
                
            VStack {
                HStack {
                    Text("Info 203: A Networked World")
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
