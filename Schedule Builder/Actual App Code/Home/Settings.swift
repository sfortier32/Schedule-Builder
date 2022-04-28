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
    @State private var email = ""
    @State private var password = ""
    @StateObject var global = GlobalVariables()
    
    
    var body: some View {
        switch showView {
        case "Settings":
            ZStack {
                
                Background()
                LinearGradient(gradient: Gradient(colors: [.blue1, .blue2]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
                    .mask {
                        Rectangle()
                            .position(x: 207, y: 555)
                    }
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: -5).overlay(
                        
                        ScrollView{
                            VStack{
                                Text("Personal")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(Color("recWhite"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                
                                Text("Email")
                                    .font(.custom("Inter-Medium", size: 18))
                                    .foregroundColor(Color("recWhite"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder(Color.white, lineWidth: 3)
                                    .frame(width: 350, height: 48)
                                    .background(Color.white.opacity(1))
                                    .cornerRadius(20)
                                    .overlay (
                                        TextField("Email", text: $email)
                                            .font(.custom("Inter-Medium", size: 16))
                                            .foregroundColor(.blueGray)
                                            .padding(sides: [.left, .right], value: 20)
                                    ).padding(.bottom, 0)
                                
                                Text("Password")
                                    .font(.custom("Inter-Medium", size: 18))
                                    .foregroundColor(Color("recWhite"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder(Color.white, lineWidth: 3)
                                    .frame(width: 350, height: 48)
                                    .background(Color.white.opacity(1))
                                    .cornerRadius(20)
                                    .overlay (
                                        TextField("Password", text: $email)
                                            .font(.custom("Inter-Medium", size: 16))
                                            .foregroundColor(.blueGray)
                                            .padding(sides: [.left, .right], value: 20)
                                    ).padding(.bottom, 10)
                                
                                Text("Academics")
                                    .font(.custom("Inter-Bold", size: 20))
                                    .foregroundColor(Color("recWhite"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                Text("Major(s)")
                                    .font(.custom("Inter-Medium", size: 18))
                                    .foregroundColor(Color("recWhite"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                
                                RoundedRectangle(cornerRadius: 20)
                                    .strokeBorder(Color.white, lineWidth: 3)
                                    .frame(width: 350, height: 48)
                                    .background(Color.white.opacity(1))
                                    .cornerRadius(20)
                                    .overlay (
                                        TextField("Major", text: $email)
                                            .font(.custom("Inter-Medium", size: 16))
                                            .foregroundColor(.blueGray)
                                            .padding(sides: [.left, .right], value: 20)
                                    ).padding(.bottom, 5)
                                
                                HStack{
                                    VStack{
                                        Text("Minor(s)")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("recWhite"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 175, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(20)
                                            .overlay (
                                                TextField("Major", text: $email)
                                                    .font(.custom("Inter-Medium", size: 16))
                                                    .foregroundColor(.blueGray)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10).padding(sides: [.left, .right], value: 20)
                                    }
                                    
                                    VStack{
                                        Text("Certificate(s)")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("recWhite"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 175, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(20)
                                            .overlay (
                                                TextField("Certificate", text: $email)
                                                    .font(.custom("Inter-Medium", size: 16))
                                                    .foregroundColor(.blueGray)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10)
                                    }
                                }
                                
                                HStack{
                                    VStack{
                                        Text("Credits\nCompleted")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("recWhite"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 100, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(20)
                                            .overlay (
                                                TextField("50", text: $email)
                                                    .font(.custom("Inter-Medium", size: 30))
                                                    .foregroundColor(.black)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10).padding(sides: [.left, .right], value: 20)
                                    }
                                    
                                    VStack{
                                        Text("Credits\nTransfered")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("recWhite"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 100, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(20)
                                            .overlay (
                                                TextField("50", text: $email)
                                                    .font(.custom("Inter-Medium", size: 30))
                                                    .foregroundColor(.black)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10)
                                    }
                                    
                                    VStack{
                                        Text("Credits\nNeeded")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("recWhite"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 100, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(20)
                                            .overlay (
                                                TextField("50", text: $email)
                                                    .font(.custom("Inter-Medium", size: 30))
                                                    .foregroundColor(.black)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10)
                                    }
                                }                                                                
                                
                            }.position(x: 207, y: 200).padding(.top, 80)
                        }.position(x: 207, y: 350).frame(width: UIScreen.main.bounds.size.width, height: 590, alignment: Alignment.center)
                    )
                
                
                VStack() {
                    HStack {
                        
                        Text("Settings")
                            .font(.custom("Inter-Semibold", size: 33))
                            .foregroundColor(Color("recWhite"))
                        Spacer()
                        
                        Spacer()
                        
                        Button(action: {
                            global.showView = "Launch"
                        }) {
                            HStack {
                                Text("Log Out")
                                    .font(.custom("Inter-SemiBold", size: 16))
                                    .foregroundColor(.white)
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                    .resizable()
                                    .frame(width: 18, height: 16)
                                    .foregroundColor(.white)
                                    .padding(sides: [.right], value: 6)
                            }
                            
                        }
                    }.padding(.top, 80)
                        .padding(sides: [.left, .right], value: 30)
                    
                }.position(x: 207, y: 60)
                
                
                
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
