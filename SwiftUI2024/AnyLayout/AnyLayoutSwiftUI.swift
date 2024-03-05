//  /*
//
//  Project: SwiftUI2024
//  File: AnyLayoutSwiftUI.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.03.2024
//
//  */

import SwiftUI

struct AnyLayoutSwiftUI: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(HStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("First")
                Text("Second")
                Text("Third")
            }
            
//            if horizontalSizeClass == .compact {
//                VStack {
//                    Text("First")
//                    Text("Second")
//                    Text("Third")
//                }
//            } else {
//                HStack {
//                    Text("First")
//                    Text("Second")
//                    Text("Third")
//                }
//            }
        }
    }
}

#Preview {
    AnyLayoutSwiftUI()
}
