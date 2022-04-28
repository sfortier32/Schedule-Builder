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
    @State private var name = "John Doe"
    
    var body: some View {
        switch showView {
        case "Settings":
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue1, .blue2]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
                    .mask {
                        Rectangle()
                            .position(x: 207, y: 555)
                    }
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: -5)
                
                HStack {
                    VStack() {
                        Text("Settings")
                            .font(.custom("Inter-Semibold", size: 33))
                            .foregroundColor(Color("almostBlack"))
                        Spacer()
                    }
                    Spacer()
                }.padding(.top, 80)
                    .padding(sides: [.left, .right], value: 30)
                
                //Text boxes
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Personal")
                            .font(.custom("Inter-SemiBold", size: 18))
                            .foregroundColor(Color.recGray)
                            .padding(.bottom, 1)
                            .padding(sides: [.left], value: 4)
                        Text("Name")
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundColor(Color.recGray)
                            .padding(sides: [.left], value: 4)
                        WideRectangle()
                            .overlay (
                                TextField("Name", text: $name))
                        Text("Email")
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundColor(Color.recGray)
                            .padding(.top, 5)
                            .padding(sides: [.left], value: 4)
                        WideRectangle()
                        
                        Text("Academics")
                            .font(.custom("Inter-SemiBold", size: 18))
                            .foregroundColor(Color.recGray)
                            .padding(sides: [.left], value: 4)
                            .padding(.bottom, 5)
                            .padding(.top, 20)
                        Text("Major(s)")
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundColor(Color.recGray)
                            .padding(sides: [.left], value: 4)
                        WideRectangle()
                        
                        
                    }
                }.frame(height: 600)
                    .position(x: 207, y: 475)
                
                
                //End text boxes
                
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
                                    Image(systemName: "gearshape.fill")
                                        .resizable()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.white)
                                }.shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 2)
                                Spacer()
                                Button(action: {
                                    showView = "Homepage"
                                }) {
                                    Image(systemName: "house")
                                        .resizable()
                                        .frame(width: 45, height: 40)
                                        .foregroundColor(.white)
                                }.shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 2)
                                Spacer()
                                Button(action: {
                                    showView = "Schedule"
                                }) {
                                    Image(systemName: "calendar.circle")
                                        .resizable()
                                        .frame(width: 45, height: 45)
                                        .foregroundColor(.white)
                                }.shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 2)
                            }.padding(sides: [.left, .right], value: 75)
                                .padding(.bottom, 20)
                        )
                }.position(x: 207, y: 800)
            } //end zstack
        case "Homepage" :
            Homepage()
        case "Schedule" :
            Schedule()
        case "Launch" :
            Launch()
        default:
            Text("ERROR: Default case reached")
        }
    }
}

struct WideRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 350, height: 57)
            .foregroundColor(Color.recWhite)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
    }
}
