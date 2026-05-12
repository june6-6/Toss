//
//  SpendingCardView.swift
//  Toss
//
//  Created by jihoon jang on 5/11/26.
//

import SwiftUI

struct SpendingCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            // 5월에 쓴 돈
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("924,116원")
                        .font(.title3).bold()
                    Text("5월에 쓴 돈")
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Button("내역") {}
                    .buttonStyle(.bordered)
            }
            .padding()
            
            // 카드값
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("2,003,592원")
                        .font(.title3).bold()
                    Text("2일 뒤 나갈 카드값")
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Button("내역") {}
                    .buttonStyle(.bordered)
            }
            .padding()
            
            Divider()
                .padding(.horizontal)
            
            // 할 일
            HStack {
                Text("할 일")
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
                Spacer()
                Circle()
                    .fill(.blue)
                    .frame(width: 8, height: 8)
                Text("페이스페이 이어하기 외 * 1개")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    SpendingCardView()
        .padding()
        .background(Color(uiColor: .systemGroupedBackground))
}
