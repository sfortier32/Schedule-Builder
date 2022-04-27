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

struct info203View: View {
    var body: some View {
        ZStack {
            BackgroundRect()
                .background(LinearGradient(gradient: Gradient(colors: [.blue1, .blue2]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all))
                .foregroundColor(.white)
            
            HStack {
                ScrollView() {
                    VStack(alignment: .leading) {
                            Text("Description: ")
                                .font(.custom("Inter-SemiBold", size: 20))
                                .padding(.bottom, 1)
                        Text("Human-Computer Interaction design is “design for human use”. Computers are a ubiquitous part of many interactions in our lives, from the mundane everydayness of light switches and “smart” vending machines to entertainment and education to sophisticated instruments and complex energy and defense systems. In this course, we will challenge you to broaden your grasp of what a user interface can and should be, and try your hand at doing better yourself. It is a fast-paced, hands-on, project-based experience that will challenge many of your ideas of what computer science is and can be. The design thinking process draws heavily on the fundamentals of human-computer interaction (HCI) methods. I also cover design methodologies, evaluation methodologies (both quantitative and qualitative), human information processing, cognition, and perception.")
                                .font(.custom("Inter-Regular", size: 17))
                            Text("Seats:")
                                .font(.custom("Inter-SemiBold", size: 20))
                                .padding([.top, .bottom], 1)
                            Text("16 Available\n110 Seats")
                            .padding(.bottom, 1)
                            Text("Time and Location: ")
                                .font(.custom("Inter-SemiBold", size: 20))
                                .padding([.top, .bottom], 1)
                            Text("Tuesday, Thursday\n4:00pm - 5:15pm @ ILC S131")
                        
                            VStack(alignment: .leading) {
                                Text("Ratings:")
                                    .font(.custom("Inter-SemiBold", size: 20))
                                    .padding([.top, .bottom], 1)
                                HStack {
                                    Text("Professor\n4.7")
                                    Spacer()
                                    Text("Class\n4.5")
                                    Spacer()
                                }
                            }
                    }.frame(height: 565)
                        .frame(maxWidth: .infinity)
                }
                Spacer()
            }.padding(sides: [.left, .right], value: 20)
                .padding(.top, 220)
            
            VStack {
                HStack {
                    Text("Info 203: Intro to\nHuman-Computer Interaction")
                        .font(.custom("Inter-Bold", size: 30))
                        .foregroundColor(.recGray)
                    Spacer()
                }
                .padding(.top, 75)
                .padding(sides: [.left], value: 20)
                Spacer()
            }
        }//all code within this
    }
}

