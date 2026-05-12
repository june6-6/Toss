//
//  MoreHeaderView.swift
//  Toss
//
//  Created by jihoon jang on 5/12/26.
//

import SwiftUI
struct MoreHeaderView: View {
    var body: some View {
        
        // 상단 헤더
        HStack {
            Text("장지훈")
                .font(.title3)
            Spacer()
            Button("고객센터") {}
                .foregroundStyle(.secondary)
            Text("|")
                .foregroundStyle(.secondary)
            Button("설정") {}
                .foregroundStyle(.secondary)
        }
        .padding()
        
        // 검색바
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.secondary)
            Text("검색")
                .foregroundStyle(.secondary)
            Spacer()
        }
        .padding()
        .background(Color(uiColor: .systemGroupedBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)
        .padding(.bottom, 24)
    }
}

#Preview {
    MoreHeaderView()
}
