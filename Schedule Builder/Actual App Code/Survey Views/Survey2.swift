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
    
    var body: some View {
        switch showView {
        case "Survey2" :
            ZStack {
                Background()
                
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
                }
                Text("Survey Page 2")
                    .font(.custom("Inter-SemiBold", size: 30))
                    .foregroundColor(.white)
                
            }//end zstack of case 1
        case "Survey1" :
            Survey1()
        case "Homepage" :
            Homepage()
        default :
            Text("Error: default")
        }
    }
}
