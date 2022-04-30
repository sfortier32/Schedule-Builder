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
    let credits: Int

}

struct Schedule_Preview: PreviewProvider {
    static var previews: some View {
        Schedule()
    }
}


struct Schedule: View {
    @State private var showView = "Schedule"
    @State private var searchText = "";
    @State private var presentSheet = false
    @State var classes = getClassArray()
    @State var classes2 = getClassArray2()
    @State private var selected: schedClass = schedClass(className: "", classTime: "", xPos: 0, yPos: 0, color: .black, hearted: false, credits: 0)
    
    var body: some View {
        switch showView {
        case "Schedule":
            ZStack(alignment: .top) {
                Background2()
                VStack(){
                    HStack{
                        Text("Fall 2022")
                            .font(.custom("Inter-SemiBold", size: 27))
                            .foregroundColor(.white)
                            .lineSpacing(0.5)
                            .padding(sides: [.left], value: 32)
                            .padding(.top, 45)
                        Spacer()
                    }

                    SearchBar(text: $searchText)
                        .shadow(color: Color.black.opacity(0.1), radius:5, x:0, y:-4)
                    ScrollView{
                        VStack{
                            ForEach(searchText == "" ? classes : classes.filter(({$0.className.lowercased().contains(searchText.lowercased())})), id: \.self){ sclass in
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .fill(.white)
                                        .shadow(color: Color.black.opacity(0.1), radius:5, x:0, y:-4)
                                    .overlay(
                                        HStack{
                                            Group{
                                                Text(sclass.className + "\n")
                                                    .font(.custom("Inter -Medium", size: 12))
                                                    .foregroundColor(Color(#colorLiteral(red: 0.24, green: 0.26, blue: 0.29, alpha: 1))) + Text("\(sclass.credits) Credits; Major Requirement, Major Elective")
                                                    .font(.custom("Inter-Medium", size: 10))
                                                    .foregroundColor(Color(#colorLiteral(red: 0.24, green: 0.26, blue: 0.29, alpha: 1)))
                                            }.padding(.horizontal, 10)
                                            Spacer()
                                            Button {
                                                let i = classes.firstIndex(where:{$0.className == sclass.className})
                                                classes[i!].hearted.toggle()
                                                let k = classes2.firstIndex(where:{$0.className == sclass.className})
                                                classes2[k!].hearted.toggle()
                                            } label: {
                                                Image(systemName: sclass.hearted ? "checkmark.square.fill" : "checkmark.square").foregroundColor(Color.gray)
                                            }
                                            .padding()
                                            }
                                            .onTapGesture(perform: {
                                                selected = sclass
                                                presentSheet.toggle()
                                            })
                                    )
                                    .frame(width: 358, height: 45)
                                }
                                .sheet(isPresented: $presentSheet) {
                                    switch selected.className{
                                    case "CS325": cs325View()
                                    case "CS326": cs326View()
                                    case "Info203": info203View()
                                    case "CS490U": cs490uView()
                                    default:cs325View()
                                    }
                                }
                            }
                        }.frame(maxWidth: .infinity).padding(.bottom, 60)
                    }.frame(height: 222)
                }
                
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.1), radius:5, x:0, y:-4)
                        .frame(width: 800, height: 600).position(x: 100, y: 600)
                    
                    Grid()
                    
                    HStack{
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
                                    }.padding(.trailing, 18)
                                }.font(.custom("Inter-Medium", size: 17))
                                    .foregroundColor(Color(#colorLiteral(red: 0.24, green: 0.26, blue: 0.29, alpha: 1)))
                                    .padding(.leading, 70)
                                    .padding(.bottom, 5)
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
                                }.padding(.bottom, 15)
                                    .font(.custom("Inter-Medium", size: 13))
                                    .foregroundColor(Color(#colorLiteral(red: 0.33, green: 0.36, blue: 0.4, alpha: 1)))
                            }.padding(.bottom, 90)
                            .padding(.leading, 15)
                        }
                        Spacer()
                    }
                    
                    ForEach(classes.filter({$0.hearted}), id: \.self){ sclass in
                        ZStack {
                            RoundedRectangle(cornerRadius: 6)
                            .fill(sclass.color)
                            .frame(width: 55, height: 40)
                            Group{
                                VStack {
                                    Text(sclass.className)
                                    Text(sclass.classTime)
                                }
                            }.font(.custom("Inter-Medium", size: 9))
                                .foregroundColor(Color(.black))
                        }.position(x: CGFloat(sclass.xPos), y: CGFloat(sclass.yPos) + 8)
                    } //end zstack
                    
                    ForEach(classes2.filter({$0.hearted}), id: \.self){ sclass in
                        ZStack {
                            RoundedRectangle(cornerRadius: 6)
                            .fill(sclass.color)
                            .frame(width: 55, height: 40)
                            Group{
                                VStack {
                                    Text(sclass.className)
                                    Text(sclass.classTime)
                                }
                            }.font(.custom("Inter-Medium", size: 9))
                                .foregroundColor(Color(.black))
                        }.position(x: CGFloat(sclass.xPos), y: CGFloat(sclass.yPos) + 8)
                    } //end zstack
                    
                    Rectangle()
                        .fill(Color.navBarGray)
                        .frame(width: 420, height: 50)
                        .position(x: 200, y: 850)
                    
                    Group {
                        Rectangle()
                        .frame(width: 420, height: 100)
                        .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: -5)
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
                                    Image(systemName: "house")
                                        .resizable()
                                        .frame(width: 45, height: 40)
                                        .foregroundColor(.white)
                                }.shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 2)
                                Spacer()
                                Button(action: {
                                    showView = "Schedule"
                                }) {
                                    Image(systemName: "calendar.circle.fill")
                                        .resizable()
                                        .frame(width: 45, height: 45)
                                        .foregroundColor(.white)
                                }.shadow(color: Color.black.opacity(0.2), radius: 8, x: 0, y: 2)
                            }.padding(sides: [.left, .right], value: 75)
                                .padding(.bottom, 20)
                        )
                }.position(x: 207, y: 800)
                    
            } //end zstack
        }
        case "Homepage" :
            Homepage()
        case "Settings" :
            Settings()
        default:
            Text("ERROR: Default case reached")
        }
    }
}

struct Grid : View {
    var body: some View {
        thinLine()
            .position(x: 223, y: 359)
        thinLine()
            .position(x: 223, y: 396)
        thinLine()
            .position(x: 223, y: 435)
        thinLine()
            .position(x: 223, y: 473)
        thinLine()
            .position(x: 223, y: 511)
        thinLine()
            .position(x: 223, y: 549)
        thinLine()
            .position(x: 223, y: 587)
        thinLine()
            .position(x: 223, y: 625)
        thinLine()
            .position(x: 223, y: 663)
        thinLine()
            .position(x: 223, y: 701)
    }
}

struct thinLine : View {
    var body : some View {
        Rectangle()
            .foregroundColor(Color.black.opacity(0.3))
            .frame(width: 320, height: 1)
    }
}


