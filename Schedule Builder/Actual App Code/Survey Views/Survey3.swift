//
//  Survey3.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/28/22.
//

import SwiftUI

struct Survey3_Preview: PreviewProvider {
    static var previews: some View {
        Survey3()
    }
}

struct Survey3: View {
    
    @State private var showView = "Survey3"
    @State private var name = ""
    @State private var email = ""
    @State private var password =  ""
    @State private var password2 = ""
    @State private var isSame = false
    
    var body: some View {
        switch showView {
        case "Survey3" :
            ZStack {
                Background()
                
                VStack() {
                    Text("Save your responses by\ncreating an account.")
                        .font(.custom("Inter-Medium", size: 24))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 25)
                    
                    VStack {                           RoundedRectangle(cornerRadius: 27)
                                .strokeBorder(Color.white, lineWidth: 3)
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(27)
                                .frame(height: 60)
                                .overlay(
                                    TextField("Full Name", text: $name)
                                        .accentColor(.blueGray)
                                        .font(.custom("Inter-Medium", size: 20))
                                        .foregroundColor(.blueGray)
                                        .padding(sides: [.left, .right], value: 20)
                                        .padding([.top, .bottom], 10)
                                )
                        RoundedRectangle(cornerRadius: 27)
                                .strokeBorder(Color.white, lineWidth: 3)
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(27)
                                .frame(height: 60)
                                .overlay(
                                    TextField("Email", text: $email)
                                        .accentColor(.blueGray)
                                        .font(.custom("Inter-Medium", size: 20))
                                        .foregroundColor(.blueGray)
                                        .padding(sides: [.left, .right], value: 20)
                                        .padding([.top, .bottom], 10)
                                )
                        RoundedRectangle(cornerRadius: 27)
                                .strokeBorder(Color.white, lineWidth: 3)
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(27)
                                .frame(height: 60)
                                .overlay(
                                    SecureField("Password", text: $password)
                                        .textContentType(.password)
                                        .accentColor(.blueGray)
                                        .font(.custom("Inter-Medium", size: 20))
                                        .foregroundColor(.blueGray)
                                        .padding(sides: [.left, .right], value: 20)
                                        .padding([.top, .bottom], 10)
                                )
                        RoundedRectangle(cornerRadius: 27)
                                .strokeBorder(Color.white, lineWidth: 3)
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(27)
                                .frame(height: 60)
                                .overlay(
                                    HStack {
                                        SecureField("Confirm Password", text: $password2)
                                            .textContentType(.password)
                                            .accentColor(.blueGray)
                                            .font(.custom("Inter-Medium", size: 20))
                                            .foregroundColor(.blueGray)
                                            .padding(sides: [.left, .right], value: 20)
                                            .padding([.top, .bottom], 10)
                                        if password2 != "" {
                                            Image(systemName: password == password2 ? "checkmark.circle" : "x.circle")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(width: 28, height: 27)
                                                    .foregroundColor(.white)
                                                    .padding(sides: [.right], value: 21)
                                        }
                                    }
                                )
                        
                    }.frame(width: 275)
                    
                    if name != "" && email != "" && password != "" && password2 != "" && password == password2 {
                        Button(action: {
                            showView = "Homepage"
                        }) {
                            VStack {
                                Text("Next")
                                    .font(.custom("Inter-Medium", size: 20))
                                    .foregroundColor(.white)
                                    .padding(.top, 20)
                                
                            }
                        }
                    }
                    
                }//end of VStack
                
                //Header Buttons
                VStack {
                    HStack {
                        //Back Button
                        Button(action: {
                            showView = "Survey1"
                        }) {
                            VStack {
                                Text("back")
                                    .font(.custom("Inter-Medium", size: 16))
                                    .foregroundColor(.white)
                                    .padding(.bottom, 5)
                                Image(systemName: "return")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                            }.padding(.top, 50)
                        }
                        Spacer()
                        //Skip Button
                        Button(action: {
                            showView = "Homepage"
                        }) {
                            VStack {
                                Text("skip")
                                    .font(.custom("Inter-Medium", size: 16))
                                    .foregroundColor(.white)
                                    .padding(.bottom, 5)
                                Image(systemName: "arrow.right")
                                    .font(.system(size: 16))
                                    .foregroundColor(.white)
                            }
                        }.padding(.top, 50)
                    }.padding(sides: [.left, .right], value: 60)
                    Spacer()
                }//end of Header buttons
                
                VStack {
                    Spacer()
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(width: 274, height: 15)
                            .shadow(color: .black, radius: 4, x: 2, y: 6).opacity(0.2)
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(width: 220, height: 15)
                    }
                }.padding(.bottom, 80)
                
            }//end zstack of case 1
            
        case "Survey2" :
            Survey2()
        case "Homepage" :
            Homepage()
        default :
            Text("Error: default")
        }
    }
}
