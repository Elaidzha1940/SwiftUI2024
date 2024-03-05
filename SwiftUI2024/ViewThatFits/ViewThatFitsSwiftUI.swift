//  /*
//
//  Project: SwiftUI2024
//  File: ViewThatFitsSwiftUI.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.03.2024
//
//  */

import SwiftUI

struct ViewThatFitsSwiftUI: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            ViewThatFits(in: .horizontal) {
                Text("Hello there! How are you today? What are you doing?")
                Text("Hello there! How are you today?")
                Text("Hello there!")
            }
        }
        .foregroundStyle(.white)
        .frame(height: 300)
        .cornerRadius(10)
        .padding(25)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsSwiftUI()
}
