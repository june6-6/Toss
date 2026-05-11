//
//  HiddenMoneyBannerView.swift
//  Toss
//
//  Created by jihoon jang on 5/11/26.
//

import SwiftUI

struct HiddenMoneyBannerView: View {
    @State private var isVisible = true
    
    var body: some View {
        if isVisible {
            HStack(spacing: 12) {
                Image(systemName: "wonsign.circle.fill")
                    .foregroundStyle(.orange)
                    .font(.title2)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("내 발에 숨겨진")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Text("10,000원 찾기")
                        .font(.headline)
                        .foregroundStyle(.blue)
                    Text("토스뱅크")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
                
                Button {
                    isVisible = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(.secondary)
                }
                .buttonStyle(.plain)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 16))
        }
    }
}

#Preview {
    HiddenMoneyBannerView()
        .padding()
        .background(Color(uiColor: .systemGroupedBackground))
}
