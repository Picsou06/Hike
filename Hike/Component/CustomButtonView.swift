//
//  CustomButtonView.swift
//  Hike
//
//  Created by Picsou 06 on 11/08/2025.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [.white, .CustomGreenLight], startPoint: .top, endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(colors: [.CustomGrayLight, .CustomGrayMedium], startPoint: .top, endPoint: .bottom), lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(LinearGradient(colors: [.CustomGrayLight, .CustomGrayMedium], startPoint: .top, endPoint: .bottom))
        }
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
