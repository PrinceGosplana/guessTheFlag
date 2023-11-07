//
//  ContentView.swift
//  guessTheFlag
//
//  Created by OLEKSANDR ISAIEV on 05.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    
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
                HStack {
                    Button {
                        showingAlert = true
                    } label: {
                        Label("Edit", systemImage: "pencil")
                            .foregroundStyle(.white)
                            .font(.largeTitle)
                            .background(.red.gradient)
                    }
                    Image(systemName: "pencil.circle")
                        .foregroundStyle(.red)
                        .font(.largeTitle)
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
            .alert("Important message", isPresented: $showingAlert) {
                Button("Delete", role: .destructive) {}
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("Please read this")
            }
        
    }
    
    private func executeDelete() {
        print("Now deleting...")
    }
}

#Preview {
    ContentView()
}
