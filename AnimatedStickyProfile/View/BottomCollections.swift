//
//  SampleCardsView.swift
//  AnimatedStickyProfile
//
//  Created by Cecilia Chen on 8/3/23.
//

import SwiftUI

struct BottomCollections: View {
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabBarView(currentTab: self.$tabSelection, tabBarOptions: ["Posts", "Collects", "Like"])
        
        TabView(selection: self.$tabSelection) {
            PostsCollection()
                .tag(0)
            ColletCollection()
                .tag(1)
            LikesCollection()
                .tag(2)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    BottomCollections()
}
