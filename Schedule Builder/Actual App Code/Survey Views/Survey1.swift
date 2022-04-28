//
//  Survey1.swift
//  Schedule Builder
//

import SwiftUI

//Content Views

struct Survey1_Previews: PreviewProvider {
    static var previews: some View {
        Survey1()
    }
}

struct Survey1 : View {
    
    @State private var showView = "Survey1"
    
    @State private var fieldsComplete = false
    
    @State private var isMajorExpanded = false
    @State private var selectedMajor = "Major(s)"
    @State private var major = ["Undeclared",
                                "Accounting",
                                "Afro-American Studies",
                                "Animal Science",
                                "Anthropology",
                                "Arboriculture & Community Forest Management",
                                "Architecture",
                                "Art",
                                "Art Education",
                                "Art History",
                                "Astronomy",
                                "BDIC",
                                "Biochemistry and Molecular Biology",
                                "Biology",
                                "Biomedical Engineering",
                                "Building & Construction Technology"]
    
    @State private var isMinorExpanded = false
    @State private var selectedMinor = "Minor(s)"
    @State private var minor = ["None",
    "Aerospace Studies",
    "Afro-American Studies",
    "Anthropology",
    "Arabic Language",
    "Architectural Studies",
    "Art History",
    "Astronomy",
    "Biochemistry and Molecular Biology",
    "Business",
    "Building and Construction Technology",
    "Catalan Studies",
    "Chemistry",
    "Chinese",
    "Classical Archaeology",
    "Classical Civilization",
    "Comparative Literature",
    "Computer Science"]
    
    @State private var isCertExpanded = false
    @State private var selectedCert = "Certificate(s)"
    @State private var certificate = ["None",
    "Arboriculture & Urban Forestry",
    "Arts Management",
    "Business Studies",
    "Criminology and the Criminal Jusice System",
    "Film Studies Online",
    "Human Resource Management",
    "Journalism",
    "Medical Humanities",
    "Political Economy",
    "Professional Translation and Interpreting",
    "Social Work & Social Welfare",
    "Sustainable Business Practices",
    "Sustainable Food and Farming",
    "Teaching English to Speakers of Other Languages"]
    
    var body: some View {
        switch showView {
            case "Survey1":
                ZStack {
                    
                    Background()
                    
                    //Header Buttons
                    VStack {
                        HStack {
                            //Back Button
                            Button(action: {
                                showView = "Launch"
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
                                showView = "Survey2"
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
                    }
                    
                    //Front Page
                    VStack() {
                        Text("What requirements\nare you trying to\ncomplete?")
                            .font(.custom("Inter-Medium", size: 23))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(.bottom, 25)
                        VStack() {
                            DisclosureGroup("\(selectedMajor)", isExpanded: $isMajorExpanded) {
                                ScrollView {
                                    VStack {
                                        ForEach(major, id: \.self) {
                                            selected in Text("\(selected)")
                                                .frame(maxWidth: .infinity)
                                                .font(.custom("Inter-Medium", size: 15))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.blueGray)
                                                .padding(5)
                                                .onTapGesture {
                                                    self.selectedMajor = selected
                                                    withAnimation {
                                                        self.isMajorExpanded.toggle()
                                                    }
                                                }
                                        }
                                    }
                                }.frame(height: 120)
                            }.accentColor(.blueGray)
                                .font(.custom("Inter-Medium", size: 20))
                                .foregroundColor(.blueGray)
                                .padding(sides: [.left, .right], value: 20)
                                .padding([.top, .bottom], 10)
                                .background(.white.opacity(0.2))
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .strokeBorder(Color.white, lineWidth: 3)
                                )
                            DisclosureGroup("\(selectedMinor)", isExpanded: $isMinorExpanded) {
                                ScrollView {
                                    VStack {
                                        ForEach(minor, id: \.self) {
                                            selected2 in Text("\(selected2)")
                                                .frame(maxWidth: .infinity)
                                                .font(.custom("Inter-Medium", size: 15))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.blueGray)
                                                .padding(5)
                                                .onTapGesture {
                                                    self.selectedMinor = selected2
                                                    withAnimation {
                                                        self.isMinorExpanded.toggle()
                                                    }
                                                }
                                        }
                                    }
                                }.frame(height: 120)
                            }.accentColor(.blueGray)
                                .font(.custom("Inter-Medium", size: 20))
                                .foregroundColor(.blueGray)
                                .padding(sides: [.left, .right], value: 20)
                                .padding([.top, .bottom], 10)
                                .background(.white.opacity(0.2))
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .strokeBorder(Color.white, lineWidth: 3)
                                )
                            DisclosureGroup("\(selectedCert)", isExpanded: $isCertExpanded) {
                                ScrollView {
                                    VStack {
                                        ForEach(certificate, id: \.self) {
                                            selected in Text("\(selected)")
                                                .frame(maxWidth: .infinity)
                                                .font(.custom("Inter-Medium", size: 15))
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(.blueGray)
                                                .padding(5)
                                                .onTapGesture {
                                                    self.selectedCert = selected
                                                    withAnimation {
                                                        self.isCertExpanded.toggle()
                                                    }
                                                }
                                        }
                                    }
                                }.frame(height: 120)
                            }.accentColor(.blueGray)
                                .font(.custom("Inter-Medium", size: 20))
                                .foregroundColor(.blueGray)
                                .padding(sides: [.left, .right], value: 20)
                                .padding([.top, .bottom], 10)
                                .background(.white.opacity(0.2))
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 25)
                                        .strokeBorder(Color.white, lineWidth: 3)
                                )
                        }.padding(.bottom, 25)
                        
                        //Conditional Next Button
                        
                        if selectedMajor != "Major(s)" && selectedMinor != "Minor(s)" && selectedCert != "Certificate(s)" {
                            Button(action: {
                                showView = "Survey2"
                            }) {
                                VStack {
                                    Text("Next")
                                        .font(.custom("Inter-Medium", size: 20))
                                        .foregroundColor(.white)
                                }
                            }
                        }
                    }.frame(width: 275, height: 700)
                    //End of Front Page
                    
                    VStack {
                        Spacer()
                        ZStack(alignment: .leading) {
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.white)
                                .frame(width: 274, height: 15)
                                .shadow(color: .black, radius: 4, x: 2, y: 6).opacity(0.2)
                            RoundedRectangle(cornerRadius: 25)
                                .fill(Color.white)
                                .frame(width: 70, height: 15)
                        }
                    }.padding(.bottom, 80)
                } //End of Case1

            case "Survey2":
                Survey2()
            case "Launch" :
                Launch()
            default:
                Text("ERROR: You reached the default case.")
            }
    }
}

