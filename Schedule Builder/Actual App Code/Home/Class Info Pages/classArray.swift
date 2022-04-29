//
//  classArray.swift
//  Schedule Builder
//
//  Created by Emily Cooper on 4/29/22.
//

import Foundation
import SwiftUI

func getClassArray() -> [schedClass]{
    return [
        schedClass(className: "CS325", classTime: "9am-10am", xPos: 100, yPos: 400, color: .infoBlue, hearted: true, credits: 4),
        schedClass(className: "CS326", classTime: "4pm-5pm", xPos: 100, yPos: 675, color: .infoGreen, hearted: true, credits: 3),
        schedClass(className: "Info203", classTime: "1pm-2pm",xPos: 175, yPos: 560, color: .infoDarkBlue, hearted: true, credits: 4),
        schedClass(className: "CS490U", classTime: "1pm-2pm", xPos: 375, yPos: 550, color: .infoOrange, hearted: true, credits: 3)
    ]
}
