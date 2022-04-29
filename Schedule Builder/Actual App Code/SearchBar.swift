//
//  SearchBar.swift
//  Schedule Builder
//
//  Created by Emily Cooper on 4/29/22.
//

import SwiftUI
 
struct SearchBar: View {
    @Binding var text: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
 
            TextField("Add more classes...", text: $text)
                .font(.custom("Inter Medium", size: 12)).foregroundColor(Color(#colorLiteral(red: 0.5, green: 0.55, blue: 0.62, alpha: 1))).lineSpacing(0.5)
                .frame(width: 334, height: nil)
                .padding(4)
                .padding(.horizontal, 20)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8999999761581421)))
                .cornerRadius(10)
                .padding(.horizontal, 1.0)
                .onTapGesture {
                    self.isEditing = true
                }
        }.shadow(color: Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.10000000149011612)), radius:4, x:0, y:4)
    }
}



struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}

