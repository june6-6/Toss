//
//  ContentView.swift
//  Toss
//
//  Created by jihoon jang on 5/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Text("홈")
                .tabItem {
                    Label("홈", systemImage: "house.fill")
                }
            Text("혜택")
                .tabItem {
                    Label("혜택", systemImage: "diamond.fill")
                }
            Text("쇼핑")
                .tabItem {
                    Label("쇼핑", systemImage: "bag.fill")
                }
            Text("증권")
                .tabItem {
                    Label("증권", systemImage: "chart.bar.fill")
                }
            Text("전체")
                .tabItem {
                    Label("전체", systemImage: "line.3.horizontal")
                }
        }
        .tint(.blue)
    }
}
#Preview {
    ContentView()
}
