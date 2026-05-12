//
//  MenuListView.swift
//  Toss
//
//  Created by jihoon jang on 5/12/26.
//

import SwiftUI

struct MenuListView: View {
    let items: [MenuItem] = [
        MenuItem(icon: "creditcard.fill", color: .blue, title: "계좌 개설", subtitle: "토스뱅크 · 타 은행/증권"),
        MenuItem(icon: "bag.fill", color: .green, title: "내 자산", subtitle: "계좌 · 대출 · 증권 · 카드 · 포인트"),
        MenuItem(icon: "wonsign.circle.fill", color: .green, title: "대출 받기", subtitle: "신용 · 주택 · 대환 · 내 대출"),
        MenuItem(icon: "wifi", color: .teal, title: "모바일 요금제", subtitle: "KT · SKT · U+ · 알뜰폰"),
        MenuItem(icon: "cross.circle.fill", color: .green, title: "보험", subtitle: "병원비 청구 · 상담 · 상품"),
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("금융 서비스")
                .font(.headline)
                .padding()
            
            ForEach(items, id: \.title) { item in
                HStack(spacing: 12) {
                    Image(systemName: item.icon)
                        .foregroundStyle(.white)
                        .frame(width: 36, height: 36)
                        .background(item.color)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                    Text(item.title)
                        .font(.body)
                    
                    Spacer()
                    
                    Text(item.subtitle)
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)
                .padding(.vertical, 10)
            }
        }
    }
}

#Preview {
    MenuListView()
}
