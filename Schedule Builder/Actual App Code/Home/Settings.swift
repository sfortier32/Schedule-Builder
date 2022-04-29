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

struct Personal: View {
    
    @State private var name = "John Doe"
    @State private var email = "student@umass.edu"
    
    var body: some View {
        Text("Personal")
            .font(.custom("Inter-Medium", size: 19))
            .foregroundColor(Color.almostBlack)
            .padding(sides: [.left], value: 4)
        
        Text("Name")
            .font(.custom("Inter-Regular", size: 16))
            .foregroundColor(Color.almostBlack)
            .padding(sides: [.left], value: 4)
        WideRectangle()
            .overlay (
                TextField("Name", text: $name)
                    .font(.custom("Inter-Regular", size: 16))
                    .foregroundColor(Color.navBarGray)
                    .padding(sides: [.left, .right], value: 15)
            )
        
        Text("Email")
            .font(.custom("Inter-Regular", size: 16))
            .foregroundColor(Color.almostBlack)
            .padding(.top, 5)
            .padding(sides: [.left], value: 4)
        WideRectangle()
            .overlay (
                TextField("Email", text: $email)
                    .font(.custom("Inter-Regular", size: 16))
                    .foregroundColor(Color.navBarGray)
                    .padding(sides: [.left, .right], value: 15)
            )
    }
}

struct Academics : View {
    
    @State private var major = "Informatics, B.S."
    @State private var minor = "Mathematics"
    @State private var certificate = "None"
    @State private var credComp = "50"
    @State private var credTran = "30"
    @State private var credNeed = "30"
    
    var body: some View {
        Text("Academics")
            .font(.custom("Inter-Medium", size: 18))
            .foregroundColor(Color.almostBlack)
            .padding(sides: [.left], value: 4)
            .padding(.top, 20)
        
        Text("Major(s)")
            .font(.custom("Inter-Regular", size: 16))
            .foregroundColor(Color.almostBlack)
            .padding(sides: [.left], value: 4)
        WideRectangle()
            .overlay (
                TextField("Major", text: $major)
                    .font(.custom("Inter-Regular", size: 16))
                    .foregroundColor(Color.navBarGray)
                    .padding(sides: [.left, .right], value: 15)
            )
        
        HStack {
            VStack(alignment: .leading) {
                Text("Minor(s)")
                    .font(.custom("Inter-Regular", size: 16))
                    .foregroundColor(Color.almostBlack)
                    .padding(sides: [.left], value: 4)
                HalfWidthRect()
                    .overlay(
                        TextField("Minor(s)", text: $minor)
                            .font(.custom("Inter-Regular", size: 16))
                            .foregroundColor(Color.navBarGray)
                            .padding(sides: [.left, .right], value: 15)
                    )
            }
            Spacer()
            VStack(alignment: .leading) {
                Text("Certificate(s)")
                    .font(.custom("Inter-Regular", size: 16))
                    .foregroundColor(Color.almostBlack)
                    .padding(sides: [.left], value: 4)
                HalfWidthRect()
                    .overlay(
                        TextField("Certificate(s)", text: $certificate)
                            .font(.custom("Inter-Regular", size: 16))
                            .foregroundColor(Color.navBarGray)
                            .padding(sides: [.left, .right], value: 15)
                    )
            }
        }.padding(.top, 6)//end HStack
        
        HStack {
            VStack(alignment: .leading) {
                Text("Credits\nComplete")
                    .font(.custom("Inter-Regular", size: 16))
                    .foregroundColor(Color.almostBlack)
                    .padding(sides: [.left], value: 4)
                SmallRectangle()
                    .overlay(
                        TextField("0", text: $credComp)
                            .font(.custom("Inter-Regular", size: 22))
                            .foregroundColor(Color.navBarGray)
                            .padding(sides: [.left], value: 37)
                    )
            }
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Credits\nTransferred")
                    .font(.custom("Inter-Regular", size: 16))
                    .foregroundColor(Color.almostBlack)
                    .padding(sides: [.left], value: 4)
                SmallRectangle()
                    .overlay(
                        TextField("0", text: $credTran)
                            .font(.custom("Inter-Regular", size: 22))
                            .foregroundColor(Color.navBarGray)
                            .padding(sides: [.left], value: 37)
                    )
            }
            Spacer()
            
            VStack(alignment: .leading) {
                Text("Credits\nNeeded")
                    .font(.custom("Inter-Regular", size: 16))
                    .foregroundColor(Color.almostBlack)
                    .padding(sides: [.left], value: 4)
                SmallRectangle()
                    .overlay(
                        TextField("0", text: $credNeed)
                            .font(.custom("Inter-Regular", size: 22))
                            .foregroundColor(Color.navBarGray)
                            .padding(sides: [.left], value: 37)
                    )
            }
        }.padding(.top, 6)//end 2nd HStack
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
                .font(.custom("Inter-Medium", size: 18))
                .foregroundColor(Color.almostBlack)
                .padding(sides: [.left], value: 4)
                .padding(.top, 20)
            HStack {
                VStack(alignment: .leading) {
                    Text("Minimum\nProfessor Rating")
                        .font(.custom("Inter-Regular", size: 16))
                        .foregroundColor(Color.almostBlack)
                        .padding(sides: [.left], value: 4)
                    SmallRect2()
                        .overlay(
                            HStack {
                                TextField("1", text: $minProf)
                                    .font(.custom("Inter-Regular", size: 22))
                                    .padding(sides: [.left], value: 40)
                                Button(action: {
                                    self.isOpen1.toggle()
                                }) {
                                    Image(systemName: self.isOpen1 == true ? "lock.fill" : "lock.open.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 28, height: 27)
                                        .accentColor(Color.recGray)
                                }.padding(sides: [.right], value: 30)
                            }
                        )
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text("Minimum\nClass Rating")
                        .font(.custom("Inter-Regular", size: 16))
                        .foregroundColor(Color.almostBlack)
                        .padding(sides: [.left], value: 4)
                    SmallRect2()
                        .overlay(
                            HStack {
                                TextField("1", text: $minClass)
                                    .font(.custom("Inter-Regular", size: 22))
                                    .padding(sides: [.left], value: 40)
                                Button(action: {
                                    self.isOpen2.toggle()
                                }) {
                                    Image(systemName: self.isOpen2 == true ? "lock.fill" : "lock.open.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 28, height: 27)
                                        .accentColor(Color.recGray)
                                }.padding(sides: [.right], value: 30)
                            }
                        )
                }
            }
        }
    }
}

struct WideRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 350, height: 50)
            .foregroundColor(Color.recWhite)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
    }
}

struct HalfWidthRect : View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 170, height: 50)
            .foregroundColor(Color.recWhite)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
    }
}

struct SmallRectangle : View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 105, height: 50)
            .foregroundColor(Color.recWhite)
            .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
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
