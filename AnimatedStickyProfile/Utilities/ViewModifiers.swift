//
//  ViewModifiers.swift
//  AnimatedStickyProfile
//
//  Created by Cecilia Chen on 8/3/23.
//

import SwiftUI

extension View {
    func moveText(_ progress: CGFloat, _ headerHeight: CGFloat, _ minimumHeaderHeight: CGFloat) -> some View {
        self
            .hidden()
            .overlay {
                GeometryReader { proxy in
                    let rect = proxy.frame(in: .global)
                    let midY = rect.midY
                    let halfScaledTextHeight = (rect.height * 0.85) / 2
                    let profileImageHeight = (headerHeight * 0.5)
                    let scaledImageHeight = profileImageHeight * 0.3
                    let halfScaledImageHeight = scaledImageHeight / 2
                    let vStackSpacing: CGFloat = 4.5
                    let resizedOffsetY = (midY - (minimumHeaderHeight - halfScaledTextHeight - vStackSpacing - halfScaledImageHeight))
                    
                    self
                        .scaleEffect(1 - (progress * 0.15))
                        .offset(y: -resizedOffsetY * progress)
                }
            }
    }
    
    func profileNameStyling() -> some View {
        self.modifier(ProfileNameModifier())
    }
}

struct ProfileNameModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 18, weight: .medium, design: .default))
            .fontWeight(.bold)
            .foregroundColor(.white)
    }
}

extension Image {
    func profileImageStyling(rect: CGRect) -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .frame(width: rect.width, height: rect.height)
            .overlay(
                Circle()
                    .stroke(
                        LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange],
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing), lineWidth: 3
                    )
                    .frame(width: rect.width + 18, height: rect.height + 18)
            )
    }
}
