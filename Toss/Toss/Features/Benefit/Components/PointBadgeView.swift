//
//  PointBadgeView.swift
//  Toss
//
//  Created by jihoon jang on 5/14/26.
//

import SwiftUI

struct PointBadgeView: View {
    let points: Int
    
    var body: some View {
        HStack(spacing: 4) {
            Text("p")
                .font(.system(size: 12, weight: .bold))
                .foregroundColor(.white)
                .frame(width: 18, height: 18)
                .background(Color.blue)
                .clipShape(Circle())
            
            Text("\(points)원")
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.primary)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(Color(.systemBackground))
        .clipShape(Capsule())
        .shadow(color: .black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

#Preview {
    PointBadgeView(points: 130)
        .padding()
        .background(Color(.systemGroupedBackground))
}
