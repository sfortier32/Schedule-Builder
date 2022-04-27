//
//  cs326View.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/26/22.
//

import SwiftUI

struct cs326View_Preview : PreviewProvider {
    static var previews: some View {
        cs326View()
    }
}

struct cs326View : View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Copy the layout from the cs325View file")
                .padding(.bottom, 10)
            Text("Also have different gradients for each of the headers or alternate two between the gradients (green1, teal1) and (blue1, blue2) for the header colors")
        }.padding(sides: [.left, .right], value: 8)
    }
}
