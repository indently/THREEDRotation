//
//  ContentView.swift
//  THREEDRotation
//
//  Created by Federico on 11/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var degrees = 0.0
    
    
    var body: some View {
        VStack {
            Spacer()
            LinearGradient(gradient: Gradient(colors: [.red.opacity(0.80), .blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .frame(width: 300, height: 200)
                .cornerRadius(10)
                .rotation3DEffect(.degrees(degrees), axis: (x: 0, y: 1, z: 0))
            Spacer()
            Slider(value: $degrees, in: 0...1080)
                .padding()
            Button("Animate") {
                withAnimation(.easeIn(duration: 1)) {
                    self.degrees += 180
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
