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
 
            TextField("Search for classes...", text: $text)
                .frame(width: 334, height: nil)
                .padding(3)
                .padding(.horizontal, 20)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8999999761581421)))
                .cornerRadius(10)
                .padding(.horizontal, 1.0)
                .onTapGesture {
                    self.isEditing = true
                }
        }
    }
}



struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(text: .constant(""))
    }
}

