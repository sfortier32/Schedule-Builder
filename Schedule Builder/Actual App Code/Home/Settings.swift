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
    @State private var email = "Student@umass.edu"
    
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
                        
                ScrollView {
                    VStack {
                        Text("Personal")
                            .font(.custom("Inter-SemiBold", size: 20))
                            .foregroundColor(Color("almostBlack"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                        
                        Text("Full Name")
                            .font(.custom("Inter-Medium", size: 18))
                            .foregroundColor(Color("almostBlack"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
                            
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350, height: 48)
                            .foregroundColor(Color.recWhite)
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                            .overlay (
                                TextField("Name", text: $name)
                                    .font(.custom("Inter-Medium", size: 16))
                                    .foregroundColor(.gray)
                                    .padding(sides: [.left, .right], value: 20)
                            )
                        
                        Text("Email")
                            .font(.custom("Inter-Medium", size: 18))
                            .foregroundColor(Color("almostBlack"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(EdgeInsets(top: 5, leading: 40, bottom: 0, trailing: 0))
                            
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 350, height: 48)
                            .foregroundColor(Color.recWhite)
                            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                            .overlay (
                                TextField("Email", text: $email)
                                    .font(.custom("Inter-Medium", size: 16))
                                    .foregroundColor(.gray)
                                    .padding(sides: [.left, .right], value: 20)
                            )
                        
                        Academics()
                        Advanced()
                        
                    }.position(x: 207, y: 360)
                        .padding(.bottom, 270)//end vstack
                }.position(x: 207, y: 570)//end scroll view
                
                
                // Settings and Log Out
                VStack() {
                    HStack {

                        Text("Settings")
                            .font(.custom("Inter-SemiBold", size: 33))
                            .foregroundColor(Color.recGray)
                        Spacer()
                        
                        Spacer()
                        
                        Button(action: {
                            showView = "Launch"
                        }) {
                            HStack {
                                Text("Log Out")
                                    .font(.custom("Inter-SemiBold", size: 16))
                                    .foregroundColor(.almostBlack)
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 18, height: 16)
                                    .foregroundColor(.almostBlack)
                                    .padding(sides: [.right], value: 6)
                            }
                            
                        }
                    }.padding(.top, 80)
                        .padding(sides: [.left, .right], value: 30)
                    
                    
                }.position(x: 207, y: 60)

                
                // Navigation Bar
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

struct SmallRect2 : View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 160, height: 50)
            .foregroundColor(Color.recWhite)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
    }
}

struct Academics : View {
    
    @State private var major = "Informatics, B.S."
    @State private var minor = "Public Health"
    @State private var certificate = "None"
    @State private var credits_completed = "60"
    @State private var credits_transferred = "30"
    @State private var credits_needed = "30"
    
    var body: some View {
        Text("Academics")
            .font(.custom("Inter-SemiBold", size: 20))
            .foregroundColor(Color("almostBlack"))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 15, leading: 40, bottom: 0, trailing: 0))
        
        Text("Major(s)")
            .font(.custom("Inter-Medium", size: 18))
            .foregroundColor(Color("almostBlack"))
            .multilineTextAlignment(TextAlignment.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 350, height: 48)
            .foregroundColor(Color.recWhite)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
            .overlay (
                TextField("Major", text: $major)
                    .font(.custom("Inter-Medium", size: 16))
                    .foregroundColor(.gray)
                    .padding(sides: [.left, .right], value: 20)
            )
        
        
        HStack{
            VStack{
                Text("Minor(s)")
                    .font(.custom("Inter-Medium", size: 18))
                    .foregroundColor(Color("almostBlack"))
                    .multilineTextAlignment(TextAlignment.leading)
                    .frame(maxWidth: 130, alignment: .leading)
                
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 150, height: 48)
                    .foregroundColor(Color.recWhite)
                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                    .overlay (
                        TextField("Minor", text: $minor)
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundColor(.gray)
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
                    .frame(width: 150, height: 48)
                    .foregroundColor(Color.recWhite)
                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                    .overlay (
                        TextField("Certificate", text: $certificate)
                            .font(.custom("Inter-Medium", size: 16))
                            .foregroundColor(.gray)
                            .padding(sides: [.left, .right], value: 20)
                    ).padding(.bottom, 10)
            }
        }.frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 5)
            .padding(sides: [.left, .right], value: 15)
        
        HStack{
            VStack(alignment: .leading){
                Text("Credits\nCompleted")
                    .font(.custom("Inter-Medium", size: 18))
                    .foregroundColor(Color("almostBlack"))
                    .multilineTextAlignment(TextAlignment.leading)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 48)
                    .foregroundColor(Color.recWhite)
                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                    .overlay (
                        TextField("0", text: $credits_completed)
                            .font(.custom("Inter-Regular", size: 27))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                    )
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Credits\nTransfered")
                    .font(.custom("Inter-Medium", size: 18))
                    .foregroundColor(Color("almostBlack"))
                    .multilineTextAlignment(TextAlignment.leading)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 48)
                    .foregroundColor(Color.recWhite)
                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                    .overlay (
                        TextField("0", text: $credits_transferred)
                            .font(.custom("Inter-Regular", size: 27))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.gray)
                    )
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Credits\nNeeded")
                    .font(.custom("Inter-Medium", size: 18))
                    .foregroundColor(Color("almostBlack"))
                    .multilineTextAlignment(TextAlignment.leading)
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 100, height: 48)
                    .foregroundColor(Color.recWhite)
                    .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                    .overlay (
                        TextField("0", text: $credits_needed)
                            .font(.custom("Inter-Regular", size: 27))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.gray)
                    )
            }
        }.padding(sides: [.left, .right], value: 40)//end of hstack
    }
}
struct Advanced : View {
    
    @State private var minProf = "3.5"
    @State private var minClass = "3"
    @State private var isOpen1 = true
    @State private var isOpen2 = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Advanced")
                .font(.custom("Inter-SemiBold", size: 20))
                .foregroundColor(Color("almostBlack"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(EdgeInsets(top: 15, leading: 40, bottom: 0, trailing: 0))
            HStack {
                VStack(alignment: .leading) {
                    Text("Minimum\nProfessor Rating")
                        .font(.custom("Inter-Medium", size: 18))
                        .foregroundColor(Color("almostBlack"))
                        .multilineTextAlignment(TextAlignment.leading)
                    SmallRect2()
                        .overlay(
                            HStack {
                                TextField("1", text: $minProf)
                                    .font(.custom("Inter-Regular", size: 23))
                                    .foregroundColor(.gray)
                                    .padding(sides: [.left], value: 40)
                                Button(action: {
                                    self.isOpen1.toggle()
                                }) {
                                    Image(systemName: self.isOpen1 == true ? "lock.fill" : "lock.open.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 28, height: 27)
                                        .accentColor(Color.gray)
                                }.padding(sides: [.right], value: 30)
                            }
                        )
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Minimum\nClass Rating")
                        .font(.custom("Inter-Medium", size: 18))
                        .foregroundColor(Color("almostBlack"))
                        .multilineTextAlignment(TextAlignment.leading)
                    SmallRect2()
                        .overlay(
                            HStack {
                                TextField("1", text: $minClass)
                                    .font(.custom("Inter-Regular", size: 23))
                                    .foregroundColor(.gray)
                                    .padding(sides: [.left], value: 40)
                                Button(action: {
                                    self.isOpen2.toggle()
                                }) {
                                    Image(systemName: self.isOpen2 == true ? "lock.fill" : "lock.open.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 28, height: 27)
                                        .accentColor(Color.gray)
                                }.padding(sides: [.right], value: 30)
                            }
                        )
                }
            }.padding(sides: [.left, .right], value: 40) //end of hstack
        }
    }
}

