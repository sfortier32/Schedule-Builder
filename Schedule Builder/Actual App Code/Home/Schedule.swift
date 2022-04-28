//
//  Schedule.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/24/22.
//

import SwiftUI

struct schedClass: Hashable{
    let className: String
    let classTime: String
    let xPos: Int
    let yPos: Int
    let color: Color
    var hearted: Bool
}

struct Schedule_Preview: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}


struct Schedule: View {
    @State private var showView = "Schedule"
    @State var classes = [schedClass(className: "CS326", classTime: "9am-10am", xPos: 100, yPos: 400, color: Color(#colorLiteral(red: 0.49167388677597046, green: 0.4285937547683716, blue: 0.8791666626930237, alpha: 1)), hearted: true), schedClass(className: "MKTNG301", classTime: "4pm-5pm", xPos: 100, yPos: 675, color: Color(#colorLiteral(red: 0.5267361402511597, green: 0.8541666865348816, blue: 0.5987708568572998, alpha: 1)), hearted: true),schedClass(className: "CS311", classTime: "1pm-2pm", xPos: 175, yPos: 560, color: Color(#colorLiteral(red: 0.7588381767272949, green: 0.8583333492279053, blue: 0.47565972805023193, alpha: 1)), hearted: true)]
    var body: some View {
        switch showView {
        case "Schedule":
            ZStack(alignment: .top) {
                Background()
                VStack(){
                    HStack{
                        Text("Fall 2022").font(.custom("Inter Semi Bold", size: 25)).foregroundColor(Color(.black)).lineSpacing(0.5).padding()
                        Spacer()
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8999999761581421)))
                        .frame(width: 334, height: 26)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10000000149011612)), radius: 4, x: 0, y: 4)
                        HStack{
                            Text("Add more classes...").font(.custom("Inter Medium", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.5, green: 0.55, blue: 0.62, alpha: 1))).lineSpacing(0.5)
                            Image(systemName: "magnifyingglass")
                        }
                    }
                    ScrollView{
                        VStack{
                            ForEach(classes, id: \.self){ sclass in
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.949999988079071)))
                                    .frame(width: 334, height: 45)
                                    HStack{
                                        Text(sclass.className + "\n").font(.custom("Inter Medium", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.24, green: 0.26, blue: 0.29, alpha: 1))) + Text("3 Credits; Major Requirement, Major Elective").font(.custom("Inter Medium", size: 10)).foregroundColor(Color(#colorLiteral(red: 0.24, green: 0.26, blue: 0.29, alpha: 1)))
                                        Button {
                                            let i = classes.firstIndex(where:{$0.className == sclass.className})
                                            classes[i!].hearted.toggle()
                                        } label: {
                                            Image(systemName: sclass.hearted ? "heart.fill" : "heart")
                                        }
                                        }
                                    
                                       
                                }
                            }
                        }
                    }
                    
                }
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10000000149011612)), radius:4, x:0, y:-4)
                        .frame(width: 800, height: 650).position(x: 100, y: 600)
                    HStack(){
                        Group{
                            VStack(alignment: .leading){
                                Spacer()
                                HStack {
                                    Group {
                                        Text("Mon")
                                        Text("Tues")
                                        Text("Wed")
                                        Text("Thurs")
                                        Text("Fri")
                                    }.padding(.trailing, 15)
                                }.font(.custom("Inter Semi Bold", size: 21)).foregroundColor(Color(#colorLiteral(red: 0.24, green: 0.26, blue: 0.29, alpha: 1)))
                                    .padding(.leading, 70)
                                Group {
                                    Text("8AM")
                                    Text("9AM")
                                    Text("10AM")
                                    Text("11AM")
                                    Text("12PM")
                                    Text("1PM")
                                    Text("2PM")
                                    Text("3PM")
                                    Text("4PM")
                                    Text("5PM")
                                }
                                .padding(.bottom, 15.0)
                                    .font(.custom("Inter Semi Bold", size: 15)).foregroundColor(Color(#colorLiteral(red: 0.33, green: 0.36, blue: 0.4, alpha: 1)))
                            }.padding(.bottom, 90)
                            .padding(.leading, 15)
                        }
                        Spacer()
                    }
                    
                    ForEach(classes.filter({$0.hearted}), id: \.self){ sclass in
                        ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                        .fill(sclass.color)
                                        .frame(width: 70, height: 40)
                                Group{
                                    VStack{
                                        Text(sclass.className)
                                        Text(sclass.classTime)
                                    }
                                }.font(.custom("Inter Semi Bold", size: 12)).foregroundColor(Color(.black))
                                    }.position(x: CGFloat(sclass.xPos), y: CGFloat(sclass.yPos))
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
                                    Group{
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
                                    }
                                }.padding(sides: [.left, .right], value: 75)
                                    .padding(.bottom, 20)
                            )
                    }.position(x: 207, y: 800)
                }
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
