//
//  AccountCardView.swift
//  Toss
//
//  Created by jihoon jang on 5/11/26.
//

import SwiftUI

struct AccountCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            // 모든 계좌 보기
            HStack {
                Image(systemName: "creditcard.fill")
                    .foregroundStyle(.blue)
                    .font(.title3)
                Text("모든 계좌 보기")
                    .font(.headline)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.secondary)
                    .font(.subheadline)
            }
            .padding()
             
            // 캐시백
            HStack(spacing: 12) {
                Image(systemName: "wonsign.circle.fill")
                    .foregroundStyle(.blue)
                    .font(.title2)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("5번")
                        .font(.headline)
                    Text("받을 수 있는 캐시백")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
                
                Button("받기") { }
                    .buttonStyle(.bordered)
            }
            .padding()
            
            Divider()
                .padding(.horizontal)
            
            // 하단 탭 메뉴
            HStack {
                ForEach(["계좌", "대출", "카드"], id: \.self) { item in
                    Text(item)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Divider()
                        .frame(height: 12)
                }
                Spacer()
                Text("모두보기")
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
    AccountCardView()
        .padding()
        .background(Color(uiColor: .systemGroupedBackground))
}
