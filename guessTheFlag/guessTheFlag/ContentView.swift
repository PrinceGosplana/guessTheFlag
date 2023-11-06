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
                LinearGradient(stops: [
                    .init(color: .white, location: 0.25),
                    .init(color: .black, location: 0.75)
                ], startPoint: .top, endPoint: .bottom)
                RadialGradient(colors: [.blue, .black],
                               center: .center,
                               startRadius: 10,
                               endRadius: 100)
                AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
                Text("Slight gradient")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .foregroundStyle(.white)
                    .background(.red.gradient)
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
            }
            .background(.blue)
            .ignoresSafeArea()
        
    }
}

#Preview {
    ContentView()
}
