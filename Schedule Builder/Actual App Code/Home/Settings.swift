//
//  Settings.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/24/22.
//

import SwiftUI

struct Settings_Preview: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

struct Settings: View {
    
    @State private var showView = "Settings"
    
    var body: some View {
        switch showView {
        case "Settings":
            ZStack {
                
                Rectangle()
                    .fill(.white)
                    .frame(width: 430, height: 220)
                    .position(x: 206, y: 50)
                Rectangle()
                    .fill(Color.lightBlue)
                    .frame(width: 430, height: 600)
                    .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: -5)
                    .padding(.top, 100)
                
                Group {
                    Rectangle()
                        .frame(width: 420, height: 110)
                        .shadow(color: Color.black.opacity(0.3), radius: 6, x: 0, y: -5)
                        .foregroundColor(.navBarGray)
                        .position(x: 212, y: 800)
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
                                .position(x: 212, y: 800)
                        )
                }
   
            }
        case "Homepage" :
            Homepage()
        case "Schedule" :
            Schedule()
        default:
            Text("ERROR: Default case reached")
        }
    }
}
