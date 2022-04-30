//
//  classArray.swift
//  Schedule Builder
//
//  Created by Emily Cooper on 4/29/22.
//

import SwiftUI

func getClassArray() -> [schedClass]{
    return [
        schedClass(className: "CS 325", classTime: "9am-10am", xPos: 100, yPos: 407, color: .infoBlue, hearted: true, credits: 4),
        schedClass(className: "CS 326", classTime: "4pm-5pm", xPos: 100, yPos: 674, color: .infoGreen, hearted: true, credits: 3),
        schedClass(className: "INFO 203", classTime: "1pm-2pm", xPos: 173, yPos: 560, color: .infoDarkBlue, hearted: true, credits: 4),
        schedClass(className: "CS 490U", classTime: "12pm-1pm", xPos: 358, yPos: 521, color: .infoOrange, hearted: true, credits: 3)
    ]
}

func getClassArray2() -> [schedClass]{
    return [
        schedClass(className: "CS 325", classTime: "9am-10am", xPos: 231, yPos: 407, color: .infoBlue, hearted: true, credits: 4),
        schedClass(className: "CS 326", classTime: "4pm-5pm", xPos: 231, yPos: 674, color: .infoGreen, hearted: true, credits: 3),
        schedClass(className: "INFO 203", classTime: "1pm-2pm", xPos: 298, yPos: 560, color: .infoDarkBlue, hearted: true, credits: 4),
        schedClass(className: "CS 490U", classTime: "12pm-1pm", xPos: 231, yPos: 521, color: .infoOrange, hearted: true, credits: 3)
    ]
}
