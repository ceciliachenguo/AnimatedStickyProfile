//
//  ColletCollection.swift
//  AnimatedStickyProfile
//
//  Created by Cecilia Chen on 8/3/23.
//

import SwiftUI

struct ColletCollection: View {
    var body: some View {
        VStack(spacing: 15) {
            ForEach(0..<8, id: \.self) { _ in
                HStack {
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.green.opacity(0.1))
                        .frame(height: 150)
                    
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.green.opacity(0.1))
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.green.opacity(0.1))
                        .frame(height: 150)
                }
            }
        }
        .padding(15)
    }
}

#Preview {
    ColletCollection()
}
