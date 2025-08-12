//
//  GradientButtonFile.swift
//  Hike
//
//  Created by Picsou 06 on 11/08/2025.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        .padding(.vertical)
        .padding(.horizontal, 30)
        .background(
            // Conditional
            configuration.isPressed ?
            // A
            LinearGradient(colors: [Color.CustomGrayMedium, Color.CustomGrayLight], startPoint: .top, endPoint: .bottom)
            :
            // B
            LinearGradient(colors: [Color.CustomGrayLight, Color.CustomGrayMedium], startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(40)
    }
}
