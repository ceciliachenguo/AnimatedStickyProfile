//
//  Home.swift
//  AnimatedStickyProfile
//
//  Created by Cecilia Chen on 8/3/23.
//

import SwiftUI

struct UserProfileHome: View {
    var size: CGSize
    var safeArea: EdgeInsets
    var user: User

    @State private var offsetY: CGFloat = 0
    
    var body: some View {
        ScrollViewReader { scrollProxy in
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0) {
                    HeaderView(user: user, offsetY: offsetY, safeArea: safeArea, size: size)
                        .zIndex(1000)
                    
                    SampleCardsView()
                }
                .id("SCROLLVIEW")
                
                .background {
                    ScrollDetector { offset in
                        offsetY = -offset
                    } onDraggingEnd: { offset, velocity in
                        let headerHeight = (size.height * 0.3) + safeArea.top
                        let minimumHeaderHeight = 65 + safeArea.top
                        
                        let targetEnd = offset + (velocity * 45)
                        if targetEnd < (headerHeight - minimumHeaderHeight) && targetEnd > 0 {
                            withAnimation(.interactiveSpring(response: 0.55, dampingFraction: 0.65, blendDuration: 0.65)) {
                                scrollProxy.scrollTo("SCROLLVIEW", anchor: .top)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
