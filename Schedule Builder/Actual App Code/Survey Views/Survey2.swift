//
//  Survey2.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/24/22.
//

import SwiftUI

struct Survey2_Preview: PreviewProvider {
    static var previews: some View {
        Survey2()
    }
}

struct Survey2: View {
    
    @State private var showView = "Survey2"
    @State private var className = ""
    @State private var credits = ""
    
    @State private var isGradeExpanded = false
    @State private var selectedGrade = "A"
    @State private var grade = ["A","A-","B+","B","B-","C+","C","C-","D+","D","F"]
    
    var body: some View {
        switch showView {
        case "Survey2" :
            ZStack {
                Background()
                
                VStack() {
                    Text("Please fill in the\nclasses that you've\ntaken.")
                        .font(.custom("Inter-Medium", size: 24))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 25)
                    
                    VStack {
                        RoundedRectangle(cornerRadius: 27)
                                .strokeBorder(Color.white, lineWidth: 3)
                                .background(Color.white.opacity(0.2))
                                .cornerRadius(27)
                                .frame(height: 60)
                                .overlay(
                                    TextField("Class Name", text: $className)
                                        .accentColor(Color.blueGray)
                                        .font(.custom("Inter-Medium", size: 20))
                                        .foregroundColor(.blueGray)
                                        .padding(sides: [.left, .right], value: 20)
                                )
                        
                        HStack {
                            DisclosureGroup("\(selectedGrade)", isExpanded: $isGradeExpanded) {
                                ScrollView {
                                    VStack() {
                                        ForEach(grade, id: \.self) {
                                            selected in Text("\(selected)")
                                                .frame(maxWidth: .infinity)
                                                .font(.custom("Inter-Medium", size: 15))
                                                .foregroundColor(.blueGray)
                                                .padding(5)
                                                .onTapGesture {
                                                    self.selectedGrade = selected
                                                    withAnimation {
                                                        self.isGradeExpanded.toggle()
                                                    }
                                                }
                                        }
                                    }
                                }.frame(height: 120)
                            }.accentColor(.blueGray)
                                .font(.custom("Inter-Medium", size: 20))
                                .foregroundColor(.blueGray)
                                .padding(sides: [.left, .right], value: 20)
                                .padding(.top, 13.5)
                                .padding(.bottom, 13.5)
                                .background(.white.opacity(0.2))
                                .cornerRadius(27)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 27)
                                        .strokeBorder(Color.white, lineWidth: 3)
                                )
                            Spacer()
                            SmallRoundedRect()
                                .overlay(
                                    TextField("Credits", text: $credits)
                                        .accentColor(Color.blueGray)
                                        .font(.custom("Inter-Medium", size: 20))
                                        .foregroundColor(.blueGray)
                                        .padding(sides: [.left, .right], value: 20)
                                )
                        }//end hstack
                    } //end vstack inner
                    
                    Text("add another class +")
                        .font(.custom("Inter-MediumItalic", size: 17))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.top, 30)
                    
                    if className != "" && credits != "" {
                        Button(action: {
                            showView = "Survey3"
                        }) {
                            VStack {
                                Text("Next")
                                    .font(.custom("Inter-Medium", size: 20))
                                    .foregroundColor(.white)
                                    .padding(.top, 20)
                                
                            }
                        }
                    }
                }.frame(width: 275, height: 700)
                
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
                            showView = "Survey3"
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
                }//end of VStack of question + answer boxes
                
                VStack {
                    Spacer()
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(width: 274, height: 15)
                            .shadow(color: .black, radius: 4, x: 2, y: 6).opacity(0.2)
                        RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(width: 140, height: 15)
                    }
                }.padding(.bottom, 80)
                
            }//end zstack of case 1
        case "Survey1" :
            Survey1()
        case "Survey3" :
            Survey3()
        default :
            Text("Error: default")
        }
    }
}

struct SmallRoundedRect : View {
    var body: some View {
        RoundedRectangle(cornerRadius: 27)
                .strokeBorder(Color.white, lineWidth: 3)
                .background(Color.white.opacity(0.2))
                .cornerRadius(27)
                .frame(width: 122, height: 60)
    }
}
