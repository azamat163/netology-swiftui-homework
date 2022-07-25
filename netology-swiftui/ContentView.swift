//
//  ContentView.swift
//  netology-swiftui
//
//  Created by a.agataev on 18.07.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertPresented: Bool = false
    @State private var text: String = ""
    @State private var counter: Float = 0
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 50) {
                Text("Hello world!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .padding()
                    .background(.green)
                Button("Hello world", action: {})
                
                Circle()
                    .frame(width: 30, height: 39)
                
                Text("\(counter)")
                Slider(
                    value: $counter,
                    in: 0...10,
                    onEditingChanged: { _ in }
                )
                
                Button("Tap on me") {
                    self.isAlertPresented = true
                }
            }
            Spacer()
        }
        .alert("Hello", isPresented: $isAlertPresented, actions: {})
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
        .background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
