//
//  CustomCircleView.swift
//  Hike
//
//  Created by Picsou 06 on 11/08/2025.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [.CustomIndigoMedium, .CustomSalmonLight], startPoint: isAnimatedGradient ? .topLeading : .bottomLeading, endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatedGradient.toggle()
                    }
                    
                }
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
