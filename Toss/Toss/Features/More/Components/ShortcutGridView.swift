//
//  ShortcutGridView.swift
//  Toss
//
//  Created by jihoon jang on 5/12/26.
//

import SwiftUI

struct ShortcutGridView: View {
    let items: [ShortcutItem] = [
        ShortcutItem(icon: "square.grid.2x2.fill", color: .orange, title: "미니맵"),
        ShortcutItem(icon: "gamecontroller.fill", color: .purple, title: "게임"),
        ShortcutItem(icon: "building.fill", color: .orange, title: "토스뱅크"),
        ShortcutItem(icon: "person.fill", color: .orange, title: "신분증 인증")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("바로가기")
                .font(.headline)
                .padding(.horizontal)
            
            ScrollView(.horizontal) {
                HStack(spacing: 24) {
                    ForEach(items, id: \.title) { item in
                        VStack(spacing: 8) {
                            RoundedRectangle(cornerRadius: 16)
                                .fill(Color(uiColor: .systemGroupedBackground))
                                .frame(width: 60, height: 60)
                                .overlay {
                                    Image(systemName: item.icon)
                                        .foregroundStyle(item.color)
                                        .font(.title2)
                                }
                            Text(item.title)
                                .font(.caption)
                        }
                    }
                }
                .padding(.horizontal)
                .scrollIndicators(.hidden)
            }
        }
        .padding(.bottom, 24)
    }
}

#Preview {
    ShortcutGridView()
}
