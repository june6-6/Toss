//
//  MoreView.swift
//  Toss
//
//  Created by jihoon jang on 5/12/26.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                MoreHeaderView()
                ShortcutGridView()
                
                Divider()
                
                MenuListView()
            }
        }
        .background(.white)
    }
}

#Preview {
    MoreView()
}
