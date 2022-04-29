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
        schedClass(className: "CS325", classTime: "9am-10am", xPos: 100, yPos: 400, color: Color(#colorLiteral(red: 0.49167388677597046, green: 0.4285937547683716, blue: 0.8791666626930237, alpha: 1)), hearted: true, credits: 4),
        schedClass(className: "CS326", classTime: "4pm-5pm", xPos: 100, yPos: 675, color: Color(#colorLiteral(red: 0.5267361402511597, green: 0.8541666865348816, blue: 0.5987708568572998, alpha: 1)), hearted: true, credits: 3),
        schedClass(className: "info203", classTime: "1pm-2pm",xPos: 175, yPos: 560, color: Color(#colorLiteral(red: 0.7588381767272949, green: 0.8583333492279053, blue: 0.47565972805023193, alpha: 1)), hearted: true, credits: 4),
        schedClass(className: "CS490U", classTime: "1pm-2pm", xPos: 375, yPos: 550, color: Color(#colorLiteral(red: 0.3802907169, green: 0.9710113406, blue: 1, alpha: 1)), hearted: true, credits: 3)
    ]
}
