//
//  ContentView.swift
//  FireCrackersAnimation
//
//  Created by Pavankumar Arepu on 12/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Text("Spining the ball Animation")
                .font(.title)
                .padding()
            
            ZStack {
                Circle()
                    .foregroundColor(.green)
                    .frame(width: 200, height: 200)
                
                Spacer()
                
                FirecrackerStick()
                    .rotationEffect(.degrees(Double(1)))
                    .offset(y: isAnimating ? -50 : 0)
                    .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true).delay(Double(1) * 0.1))
                
                Circle()
                    .foregroundColor(.blue)
                    .frame(width: 40, height: 40)
                    .offset(y: isAnimating ? -50 : 0)
                    .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true).delay(0.4))
            }
            .onAppear {
                isAnimating = true
            }
        }
    }
}

struct FirecrackerStick: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.black)
            .frame(width: 4, height: 50)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
