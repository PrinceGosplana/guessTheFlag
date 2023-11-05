//
//  ContentView.swift
//  guessTheFlag
//
//  Created by OLEKSANDR ISAIEV on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 20) {
                Spacer()
                Text("First")
                Text("Second")
                Text("Third")
                ZStack {
                    Color.orange
                        .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 300)
                    Text("Color is orange")
                }
                ZStack {
                    VStack(spacing: 0) {
                        Color.red
                        Color.green
                    }
                    Text("Your content")
                        .foregroundStyle(.secondary)
                        .padding(50)
                        .background(.ultraThinMaterial)
                }
                Spacer()
                Spacer()
            }
            .background(.blue)
            .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
