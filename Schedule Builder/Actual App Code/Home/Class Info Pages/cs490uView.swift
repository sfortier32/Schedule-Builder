//
//  cs490uView.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/26/22.
//

import SwiftUI

struct cs490uView_Preview : PreviewProvider {
    static var previews: some View {
        cs490uView()
    }
}

struct cs490uView : View {
    var body: some View {
        ZStack {
            BackgroundRect()
                .background(Color.infoOrange)
                .foregroundColor(.white)
            
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Description: ")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding(.bottom, 1)
                    Text("As technology becomes more and more integrated with our work and life, it is increasingly critical to consider how we can better design technology to enhance the experience and behavior of its users. UX Research, or User Experience Research, is an interdisciplinary field that combines knowledge from computer science, design, statistics, and psychology to gather insights about the needs, attitudes, and behaviors of technology users to inspire and inform design. This course introduces you to the cycle of UX research and aims to prepare you to tackle real-world UX research challenges. You will learn about the principles and practices of UX research, how to conduct user experiments to explore user behaviors and motivations, how to use statistical software to analyze data, and how to present your findings in an effective manner.")
                        .font(.custom("Inter-Regular", size: 17))
                
                    Text("Seats:")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding([.top, .bottom], 1)
                    Text("1 Available\n45 Seats")
                    .padding(.bottom, 1)
                
                    Text("Information: ")
                        .font(.custom("Inter-SemiBold", size: 20))
                        .padding([.top, .bottom], 1)
                    Text("3 Credits\nAimen Gaba, Cindy Xiong\nFriday\n1:00pm - 2:00pm @ CompSci Bldg Rm 142")
                
                    VStack(alignment: .leading) {
                        Text("Ratings:")
                            .font(.custom("Inter-SemiBold", size: 20))
                            .padding([.top, .bottom], 1)
                        HStack {
                            Text("Professor: 4.0")
                            Spacer()
                            Text("Class: 4.4")
                            Spacer()
                        }
                    }
                }.padding(sides: [.left, .right], value: 20)
                    .frame(height: 800)
                    .position(x: 207, y: 375)
                    .padding(.bottom, 150)
            }.position(x: 207, y: 625)
                
            VStack {
                HStack {
                    Text("CS 490U: Intro to User Experience Research")
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
