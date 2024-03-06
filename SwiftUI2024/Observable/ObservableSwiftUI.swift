//  /*
//
//  Project: SwiftUI2024
//  File: ObservableSwiftUI.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.03.2024
//
//  */

import SwiftUI

class ObservableViewModel: ObservableObject {
    @Published var title: String = "Apple"
}

struct ObservableSwiftUI: View {
    @StateObject private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Button(viewModel.title) {
                viewModel.title = "Meta"
            }
            
            ChildView(viewModel: viewModel)
            
            ThirdView()
        }
        .environmentObject(viewModel)
    }
}

struct ChildView: View {
    @ObservedObject var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Amazon"
        }
    }
}

struct ThirdView: View {
    @EnvironmentObject var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Armaco"
        }
    }
}

#Preview {
    ObservableSwiftUI()
}
