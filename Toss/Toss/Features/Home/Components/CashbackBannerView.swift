//
//  CashbackBannerView.swift
//  Toss
//
//  Created by jihoon jang on 5/11/26.
//

import SwiftUI

struct CashbackBannerView: View {
    var body: some View {
        HStack(spacing: 12) {
            // 아이콘
            Image(systemName: "wonsign.circle.fill")
                .font(.title)
                .foregroundStyle(.blue)
            
            // 텍스트
            VStack(alignment: .leading, spacing: 4) {
                Text("5번")
                    .font(.headline)
                Text("받을 수 있는 캐시백")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            // 받기 버튼
            Button("받기") {}
                .buttonStyle(.bordered)
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    CashbackBannerView()
        .padding()
        .background(Color(uiColor: .systemGroupedBackground))
}
