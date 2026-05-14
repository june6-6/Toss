//
//  BenefitBannerView.swift
//  Toss
//
//  Created by jihoon jang on 5/14/26.
//

import SwiftUI

struct BenefitBannerView: View {
    let points: Int
    @State private var isMuted: Bool = true
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // 배너 이미지 영역(실제 앱에서는 광고 이미지)
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [Color(red: 0.4, green: 0.7, blue: 1.0),
                                 Color(red: 0.2, green: 0.5, blue: 0.9)],
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(height: 220)
                .overlay(
                    // 광고 레이블
                    Text("광고")
                        .font(.system(size: 11))
                        .foregroundColor(.white.opacity(0.8))
                        .padding(6)
                        .background(Color.black.opacity(0.3))
                        .cornerRadius(4)
                        .padding(12), alignment: .topLeading
                )
                .overlay(
                    // 더보기 버튼
                    Button(action: {}) {
                        Text("더 보기")
                            .font(.system(size: 13, weight: .medium))
                            .foregroundColor(.white)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(20)
                    }
                    .padding(12), alignment: .bottomTrailing
                )
                .overlay(
                    // 음소거 버튼
                    Button(action: {isMuted.toggle()}) {
                        Image(systemName: isMuted ? "speaker.slash.fill" : "speaker.fill")
                            .font(.system(size: 14))
                            .foregroundColor(.white)
                            .frame(width: 32, height: 32)
                            .background(Color.black.opacity(0.4))
                            .clipShape(Circle())
                    }
                        .padding(12), alignment: .bottomLeading
                )
            
            // 포인트 뱃지 (배너 하단에 겹쳐서)
            PointBadgeView(points: points)
                .offset(y: 40)
        }
    }
}

#Preview {
    BenefitBannerView(points: 130)
        .padding(.bottom, 16)
        .background(Color(.systemGroupedBackground))
}
