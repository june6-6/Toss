//
//  AccountCardView.swift
//  Toss
//
//  Created by jihoon jang on 5/11/26.
//

import SwiftUI

struct AccountCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            // 모든 계좌 보기
            HStack {
                Image(systemName: "creditcard.fill")
                    .foregroundStyle(.blue)
                Text("모든 계좌 보기")
                    .font(.headline)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.secondary)
            }
            
            Divider()
            
            // 5월에 쓴 돈
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("924,166원")
                        .font(.title2).bold()
                    Text("5월에 쓴 돈")
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Button("내역") {}
                    .buttonStyle(.bordered)
            }
            
            //카드값
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text("2,003,592원")
                        .font(.title2).bold()
                    Text("2일 뒤 나갈 카드값")
                        .foregroundStyle(.secondary)
                }
                Spacer()
                Button("내역") {}
                    .buttonStyle(.bordered)
            }
        }
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    AccountCardView()
        .padding()
        .background(Color(uiColor: .systemGroupedBackground))
}
