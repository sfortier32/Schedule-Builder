//
//  Homepage.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/24/22.
//

import SwiftUI

struct Homepage_Previews : PreviewProvider {
    static var previews : some View {
        Homepage()
    }
}

struct Homepage : View {
    
    @State private var showView = "Homepage"
    
    var body: some View {
        switch showView {
        case "Homepage" :
            ZStack {
                Background()
            
                Rectangle()
                    .frame(width: 420, height: 615)
                    .position(x: 210, y: 503)
                    .foregroundColor(Color.recWhite.opacity(0.3))
                    .shadow(radius: 5, x: 0, y: -5)
            
                VStack {
                    HStack {
                        HomepageHeader()
                        Spacer()
                    }.padding(sides: [.left], value: 40)
                        .padding(.top, 80)
                    Spacer()
                }
                    
                VStack {
                    ScrollView {
                        RecCards()
                            .frame(maxWidth: .infinity)
                    }
                }.padding(.top, 272)
                    .padding(.bottom, 50)
                
                MySearchBar()
                    .shadow(color: .black.opacity(0.15), radius: 3, x: 2, y: 4)
                    .position(x: 210, y: 235)
                
                Group {
                    Rectangle()
                        .fill(Color.navBarGray)
                        .frame(width: 420, height: 50)
                        .position(x: 200, y: 850)
                        .shadow(radius: 5, x: 0, y: -5)
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
                                }.shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 2)
                                Spacer()
                                
                                Button(action: {
                                    showView = "Homepage"
                                }) {
                                    Image(systemName: "house.fill")
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
            }
        case "Schedule" :
            Schedule()
        case "Settings" :
            Settings()
        default :
            Text("Default case reached: error")
        }
    }
}

// Components

struct HomepageHeader: View {
    var body: some View {
        Text("John,\nWe recommend the\nfollowing classes.")
            .font(.custom("Inter-SemiBold", size: 25))
            .foregroundColor(.white)
    }
}

struct MySearchBar: View {
    
    @State private var search = ""
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(.white.opacity(0.75))
            .frame(width: 370, height: 40)
            .overlay (
                HStack {
                    TextField("Search for new classes...", text: $search)
                        .foregroundColor(.gray)
                        .padding(sides: [.left], value: 15)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(sides: [.right], value: 18)
                    }
                }
            )
    }
}

struct ClassRec: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 22)
            .fill(Color.recWhite)
            .frame(width: 370, height: 130)
            .shadow(color: .black.opacity(0.15), radius: 3, x: 2, y: 4)
    }
}

struct RecCards: View {
    
    @State private var cs326Info = false
    @State private var cs325Info = false
    @State private var cs490uInfo = false
    @State private var info203Info = false
    
    var body: some View {
        Button(action: {
            self.cs326Info = true
            self.cs325Info = false
            self.cs490uInfo = false
            self.info203Info = false
                }) {
                    ClassRec()
                        .padding(.bottom, 8)
                        .overlay (
                            HStack {
                                Text("COMPSCI 326: Web\nProgramming")
                                    .font(.custom("Inter-Medium", size: 16))
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color.recGray)
                                    .padding(sides: [.left], value: 20)
                                Spacer()
                                Group {
                                    RoundedRectangle(cornerRadius: 20)
                                        .strokeBorder(Color.bor46, lineWidth: 6)
                                        .background(Color.in46)
                                        .cornerRadius(20)
                                        .frame(width: 90, height: 90)
                                        .overlay (
                                            Text("4.6")
                                                .font(.custom("Inter-Regular", size: 30))
                                        )
                                }.padding(sides: [.right], value: 40)
                            }
                        )
                }.accentColor(.black)
                    .sheet(isPresented: $cs326Info) {
                                cs326View()
                            }
                
                //CS 325
                Button(action: {
                    self.cs326Info = false
                    self.cs325Info = true
                    self.cs490uInfo = false
                    self.info203Info = false
                }) {
                    ClassRec()
                        .overlay (
                            HStack {
                                Text("COMPSCI 325: Intro to\nHuman-Computer\nInteraction")
                                    .font(.custom("Inter-Medium", size: 16))
                                    .foregroundColor(Color.recGray)
                                    .multilineTextAlignment(.leading)
                                    .padding(sides: [.left], value: 20)
                                Spacer()
                                Group {
                                    RoundedRectangle(cornerRadius: 20)
                                        .strokeBorder(Color.bor45, lineWidth: 6)
                                        .background(Color.in45)
                                        .cornerRadius(20)
                                        .frame(width: 90, height: 90)
                                        .overlay (
                                            Text("4.5")
                                                .font(.custom("Inter-Regular", size: 30))
                                        )
                                }.padding(sides: [.right], value: 40)
                            }
                        ).padding(.bottom, 8)
                }.accentColor(.black)
                    .sheet(isPresented: $cs325Info) {
                        cs325View()
                    }
                
                //CS 490U
                Button(action: {
                    self.cs326Info = false
                    self.cs325Info = false
                    self.cs490uInfo = true
                    self.info203Info = false
                }) {
                    ClassRec()
                        .overlay (
                            HStack {
                                Text("COMPSCI 490U: Intro to\nUser Experience Research")
                                    .font(.custom("Inter-Medium", size: 16))
                                    .foregroundColor(Color.recGray)
                                    .multilineTextAlignment(.leading)
                                    .padding(sides: [.left], value: 20)
                                Spacer()
                                Group {
                                    RoundedRectangle(cornerRadius: 20)
                                        .strokeBorder(Color.bor45, lineWidth: 6)
                                        .background(Color.in45)
                                        .cornerRadius(20)
                                        .frame(width: 90, height: 90)
                                        .overlay (
                                            Text("4.5")
                                                .font(.custom("Inter-Regular", size: 30))
                                        )
                                }.padding(sides: [.right], value: 40)
                            }
                        )
                        .padding(.bottom, 8)
                }.accentColor(.black)
                    .sheet(isPresented: $cs490uInfo) {
                                cs490uView()
                            }
                
                Button(action: {
                    self.cs326Info = false
                    self.cs325Info = false
                    self.cs490uInfo = false
                    self.info203Info = true
                }) {
                    ClassRec()
                        .overlay (
                            HStack {
                                Text("INFO 203: A Networked\nWorld")
                                    .font(.custom("Inter-Medium", size: 16))
                                    .foregroundColor(Color.recGray)
                                    .multilineTextAlignment(.leading)
                                    .padding(sides: [.left], value: 20)
                                Spacer()
                                Group {
                                    RoundedRectangle(cornerRadius: 20)
                                        .strokeBorder(Color.bor39, lineWidth: 6)
                                        .background(Color.in39)
                                        .cornerRadius(20)
                                        .frame(width: 90, height: 90)
                                        .overlay (
                                            Text("3.9")
                                                .font(.custom("Inter-Regular", size: 30))
                                        )
                                }.padding(sides: [.right], value: 40)
                            }
                        )
                }.accentColor(.black)
                    .padding(.bottom, 30)
                    .sheet(isPresented: $info203Info) {
                        info203View()
        }
    }
}

