//
//  ContentView.swift
//  AnimatedStickyProfile
//
//  Created by Cecilia Chen on 8/3/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        GeometryReader {
            let size = $0.size
            let safeArea = $0.safeAreaInsets
            let user1 = User(id: "1", firstName: "Olivia", lastName: "Johnson", profilePicture: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", backgroundPicture: "https://images.pexels.com/photos/1064162/pexels-photo-1064162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2", postsCnt: 8, followersCnt: 671, LikesCnt: 1389)

            UserProfileHome(size: size, safeArea: safeArea, user: user1)
                .ignoresSafeArea(.all, edges: .top)
        }
    }
}

#Preview {
    ContentView()
}
