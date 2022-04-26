//
//  Schedule_BuilderApp.swift
//  Schedule Builder
//
//  Created by Sophia Fortier on 4/22/22.
//

import SwiftUI


@main
struct Schedule_BuilderApp: App {
    var body: some Scene {
        WindowGroup {
            Launch()
        }
    }
}

// Components that are used a lot

extension Color {
    static let lightBlue = Color("lightBlue")
    static let lightGreen = Color("lightGreen")
    static let white20 = Color("white20")
    static let blueGray = Color("blueGray")
    static let navBarGray = Color("navBarGray")
    static let recWhite = Color("recWhite")
    static let recGray = Color("recGray")
    static let in46 = Color("in46")
    static let bor46 = Color("bor46")
    static let in45 = Color("in45")
    static let bor45 = Color("bor45")
    static let in42 = Color("in42")
    static let bor42 = Color("bor42")
    static let in39 = Color("in39")
    static let bor39 = Color("bor39")
    static let green1 = Color("green1")
    static let teal1 = Color("teal1")
    static let blue1 = Color("blue1")
    static let blue2 = Color("blue2")
}

struct Background: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.lightBlue, .lightGreen]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
        
        ZStack {
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 550, height: 350)
                .foregroundColor(Color.lightGreen.opacity(0.2))
                .position(x: 50, y: 0)
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 400, height: 600)
                .foregroundColor(Color.lightBlue.opacity(0.2))
                .position(x: 450, y: 600)
            Image(systemName: "circle.fill")
                .resizable()
                .frame(width: 400, height: 650)
                .foregroundColor(Color.white.opacity(0.05))
                .position(x: -75, y: 450)
                .rotationEffect(.degrees(-21))
        }
    }
}

struct Background2: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.green1, .teal1]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundRect: View {
    var body: some View {
        Rectangle()
            .frame(width: 420, height: 650)
            .position(x: 210, y: 530)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: -5)
    }
}


