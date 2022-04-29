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
    @State private var majors = ""
    @State private var minors = ""
    @State private var certificates = ""
    @State private var credits_completed = ""
    @State private var credits_transfered = ""
    @State private var credits_needed = ""
    @StateObject var global = GlobalVariables()
    
    
    var body: some View {
        switch showView {
        case "Settings":
            ZStack {
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
                                    .foregroundColor(Color("almostBlack")).frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                                
                                Text("Email")
                                    .font(.custom("Inter-Medium", size: 18))
                                    .foregroundColor(Color("almostBlack"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                                
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
                                    .foregroundColor(Color("almostBlack"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                                
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
                                    .foregroundColor(Color("almostBlack"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                                
                                Text("Major(s)")
                                    .font(.custom("Inter-Medium", size: 18))
                                    .foregroundColor(Color("almostBlack"))
                                    .multilineTextAlignment(TextAlignment.leading)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                                
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
                                            .foregroundColor(Color("almostBlack"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                            .frame(maxWidth: 130, alignment: .leading)
                                        
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 150, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(20)
                                            .overlay (
                                                TextField("Minor", text: $email)
                                                    .font(.custom("Inter-Medium", size: 16))
                                                    .foregroundColor(.blueGray)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10).padding(sides: [.left, .right], value: 20)
                                    }
                                    
                                    VStack{
                                        Text("Certificate(s)")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("almostBlack"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                            .frame(maxWidth: 130, alignment: .leading)
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 150, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(20)
                                            .overlay (
                                                TextField("Certificate", text: $email)
                                                    .font(.custom("Inter-Medium", size: 16))
                                                    .foregroundColor(.blueGray)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10)
                                    }
                                }.frame(maxWidth: .infinity, alignment: .leading).padding(sides: [.left, .right], value: 15)
                                
                                HStack{
                                    VStack{
                                        Text("Credits\nCompleted")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("almostBlack"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 100, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(30)
                                            .overlay (
                                                TextField("50", text: $email)
                                                    .font(.custom("Inter-Medium", size: 30))
                                                    .foregroundColor(.black)
                                                    .multilineTextAlignment(.center)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10).padding(sides: [.left, .right], value: 10)
                                    }
                                    
                                    VStack{
                                        Text("Credits\nTransfered")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("almostBlack"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                        
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 100, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(30)
                                            .overlay (
                                                TextField("50", text: $email)
                                                    .font(.custom("Inter-Medium", size: 30))
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(.black)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10).padding(sides: [.left, .right], value: 10)
                                    }
                                    
                                    VStack{
                                        Text("Credits\nNeeded")
                                            .font(.custom("Inter-Medium", size: 18))
                                            .foregroundColor(Color("almostBlack"))
                                            .multilineTextAlignment(TextAlignment.leading)
                                        RoundedRectangle(cornerRadius: 20)
                                            .strokeBorder(Color.white, lineWidth: 3)
                                            .frame(width: 100, height: 48)
                                            .background(Color.white.opacity(1))
                                            .cornerRadius(30)
                                            .overlay (
                                                TextField("50", text: $email)
                                                    .font(.custom("Inter-Medium", size: 30))
                                                    .multilineTextAlignment(.center)
                                                    .foregroundColor(Color.black)
                                                    .padding(sides: [.left, .right], value: 20)
                                            ).padding(.bottom, 10).padding(sides: [.left, .right], value: 10)
                                    }
                                                                                                            
                                }
                                                
                            }.position(x: 207, y: 200).padding(.top, 80)
                            
                            
                        }.position(x: 207, y: 350).frame(width: UIScreen.main.bounds.size.width, height: 590, alignment: Alignment.center)
                    )
                
                VStack() {
                    HStack {

                        Text("Settings")
                            .font(.custom("Inter-Semibold", size: 33))
                            .foregroundColor(Color.recGray)
                        Spacer()
                        
                        Spacer()
                        
                        Button(action: {
                            global.showView = "Launch"
                        }) {
                            HStack {
                                Text("Log Out")
                                    .font(.custom("Inter-SemiBold", size: 16))
                                    .foregroundColor(.black)
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                    .resizable()
                                    .frame(width: 18, height: 16)
                                    .foregroundColor(.black)
                                    .padding(sides: [.right], value: 6)
                            }
                            
                        }
                    }.padding(.top, 80)
                        .padding(sides: [.left, .right], value: 30)
                    
                }.position(x: 207, y: 60)
                
                //Text boxes
                
                ScrollView {
                    VStack(alignment: .leading) {
                        Personal()
                        Academics()
                        Advanced()
                    }.frame(height: 900)
                        .position(x: 170, y: 350)
                        .padding(.bottom, 50)
                        .padding(sides: [.left, .right], value: 35)
                }.position(x: 207, y: 570)
                
                //End text boxes
                
                //Log Out Button
                Button(action: {
                    showView = "Launch"
                })  {
                    Text("Sign Out")
                        .font(.custom("Inter-Medium", size: 16))
                        .foregroundColor(.almostBlack)
                        .padding(.bottom, 5)
                    Image(systemName: "arrow.right")
                        .foregroundColor(.almostBlack)
                        .padding(.bottom, 4)
                }.position(x: 330, y: 40)
                
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
