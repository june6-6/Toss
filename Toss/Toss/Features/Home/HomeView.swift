//
//  HomeView.swift
//  Toss
//
//  Created by jihoon jang on 5/11/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 12) {
                HiddenMoneyBannerView()
                AccountCardView()
                SpendingCardView()
            }
            .padding(.horizontal)
        }
        .background(Color(uiColor: .systemGroupedBackground))
    }
}

#Preview {
    HomeView()
}
