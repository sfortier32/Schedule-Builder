//
//  Schedule.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/24/22.
//

import SwiftUI

struct Schedule_Preview: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}

struct Schedule: View {
    
    @State private var showView = "Schedule"
    
    var body: some View {
        switch showView {
        case "Schedule":
            ZStack {
                HStack {
                    Text("Schedule Builder")
                        .font(.custom("Inter-SemiBold", size: 30))
                }
                
                Rectangle()
                    .fill(Color.navBarGray)
                    .frame(width: 420, height: 50)
                    .position(x: 200, y: 850)
                
                Group {
                    Rectangle()
                        .frame(width: 420, height: 100)
                        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: -5)
                        .foregroundColor(.navBarGray)
                        .overlay(
                            HStack {
                                Button(action: {
                                    showView = "Settings"
                                }) {
                                    Image(systemName: "gearshape")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.white)
                                }
                                Spacer()
                                Button(action: {
                                    showView = "Homepage"
                                }) {
                                    Image(systemName: "house.fill")
                                        .resizable()
                                        .frame(width: 45, height: 40)
                                        .foregroundColor(.white)
                                }
                                Spacer()
                                Button(action: {
                                    showView = "Schedule"
                                }) {
                                    Image(systemName: "calendar.circle")
                                        .resizable()
                                        .frame(width: 45, height: 45)
                                        .foregroundColor(.white)
                                }
                            }.padding(sides: [.left, .right], value: 75)
                                .padding(.bottom, 20)
                        )
                }.position(x: 207, y: 800)
            } //end zstack
        case "Homepage" :
            Homepage()
        case "Settings" :
            Settings()
        default:
            Text("ERROR: Default case reached")
        }
    }
}
