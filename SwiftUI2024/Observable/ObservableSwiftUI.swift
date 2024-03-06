//  /*
//
//  Project: SwiftUI2024
//  File: ObservableSwiftUI.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.03.2024
//
//  */

import SwiftUI

@Observable class ObservableViewModel {
    var title: String = "Apple"
}

struct ObservableSwiftUI: View {
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Button(viewModel.title) {
                viewModel.title = "Meta"
            }
            
            ChildView(viewModel: viewModel)
            
            ThirdView()
        }
        .environment(viewModel)
    }
}

struct ChildView: View {
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Amazon"
        }
    }
}

struct ThirdView: View {
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "Armaco"
        }
    }
}

#Preview {
    ObservableSwiftUI()
}
