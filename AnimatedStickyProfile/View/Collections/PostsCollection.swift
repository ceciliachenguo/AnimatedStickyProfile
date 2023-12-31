//
//  PostsCollection.swift
//  AnimatedStickyProfile
//
//  Created by Cecilia Chen on 8/3/23.
//

import SwiftUI

struct PostsCollection: View {
    var body: some View {
        VStack(spacing: 15){
            ForEach(0..<8, id: \.self) { _ in
                HStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.red.opacity(0.1))
                        .frame(height: 150)
                    Spacer()
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.red.opacity(0.1))
                        .frame(height: 150)
                }
            }
        }
        .padding(15)
    }
}

#Preview {
    PostsCollection()
}
