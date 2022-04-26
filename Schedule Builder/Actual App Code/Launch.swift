//
//  Launch.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/23/22.
//

import SwiftUI

struct Launch_Previews: PreviewProvider {
    static var previews: some View {
        Launch()
    }
}

class GlobalVariables: ObservableObject {
    @Published var showView = "Launch"
}

struct Launch: View {
    
    @State private var email = ""
    @State private var password = ""
    @StateObject var global = GlobalVariables()
    
    var body: some View {
        switch global.showView {
        case "Launch" :
            ZStack {
                Background()
                
                //Header
                HStack() {
                    Header()
                    }.padding(sides: [.right], value: 10)
                        .padding(.top, 30)
                        .frame(width: 325)
                
                //Image
                VStack {
                    
                        .resizable()
                        .frame(width: 300, height: 220)
                        .padding(.top, 40)
                        .padding(sides: [.right], value : 10)
                    
                //Login
                VStack {
                    Rect()
                        .overlay (
                            TextField("Email", text: $email)
                                .font(.custom("Inter-Medium", size: 17))
                                .foregroundColor(.blueGray)
                                .padding(sides: [.left, .right], value: 20)
                        ).padding(.bottom, 5)
                    
                    Rect()
                        .overlay (
                            SecureField("Password", text: $password)
                                .textContentType(.password)
                                .font(.custom("Inter-Medium", size: 17))
                                .foregroundColor(.blueGray)
                                .padding(sides: [.left, .right], value: 20)
                        )
                    HStack {
                        Button(action: {
                            
                        }) {
                            Text("Forgot password?")
                                .font(.custom("Inter-SemiBold", size: 16))
                                .foregroundColor(.white)
                                .padding(sides: [.left], value: 64)
                                
                        }
                        Spacer()
                        Button(action: {
                            global.showView = "Homepage"
                        }) {
                            HStack {
                                Text("Sign In")
                                    .font(.custom("Inter-SemiBold", size: 16))
                                    .foregroundColor(.white)
                                Image(systemName: "arrow.right")
                                    .resizable()
                                    .frame(width: 18, height: 16)
                                    .foregroundColor(.white)
                                    .padding(sides: [.right], value: 64)
                            }
                                
                        }
                    }.padding(.top, 9) //end Hstack
                } //end login vstack
                    .padding(.top, 8)
            }.padding(.top, 20) //end vstack
            
            //Begin Survey Button
            VStack {
                Button(action: {
                    global.showView = "Survey1"
                }) {
                    Text("Begin the Survey")
                        .font(.custom("Inter-SemiBold", size: 22))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            }
            .padding(.top, 630)
        }// end zstack in case 1
            
        case "Survey1" :
            Survey1()
        case "Homepage" :
            Homepage()
        default :
            Text("Default case error")
        }
    }
}

struct Header: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome,")
                .font(.custom("Inter-SemiBold", size: 38))
                .foregroundColor(.white)
                .padding(.top, 50)
                .padding(.bottom, 3)
            Text("Are you a new user? Take our survey and get personalized course recommendations!")
                .font(.custom("Inter-SemiBold", size: 16))
                .foregroundColor(.white)
                .padding(.bottom, 10)
            Spacer()
        }
    }
}

struct Rect : View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .strokeBorder(Color.white, lineWidth: 3)
            .frame(width: 300, height: 48)
            .background(Color.white.opacity(0.2))
            .cornerRadius(20)
    }
}


