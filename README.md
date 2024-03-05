AnyLayout
=========
`````````ruby

import SwiftUI

struct AnyLayoutSwiftUI: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Horizontal: \(horizontalSizeClass.debugDescription)")
            Text("Vertical: \(verticalSizeClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSizeClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("First")
                Text("Second")
                Text("Third")
            }
#Preview {
    AnyLayoutSwiftUI()
}
`````````
---------

ViewThatFits
============
````````````ruby

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
````````````
------------

Grid
=====
`````ruby

<img width="383" alt="light" src="https://github.com/Elaidzha1940/SwiftUI2024/assets/64445918/6e8ddf51-3a6d-4a22-81d3-e13bb2fcf8aa">
<img width="383" alt="dark" src="https://github.com/Elaidzha1940/SwiftUI2024/assets/64445918/d550edb3-93ca-44c4-8410-961980c632df">


import SwiftUI

struct GridSwiftUI: View {
    var body: some View {
        Grid {
            GridRow {
                cell(int: 1)
                cell(int: 2)
                cell(int: 3)
                cell(int: 4)
            }
            
            Divider()
                .gridCellUnsizedAxes(.horizontal)
            
            GridRow {
                cell(int: 5)
                cell(int: 6)
                cell(int: 7)
                cell(int: 8)
            }
        }
        .cornerRadius(10)
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .padding()
            .background(Color.green.opacity(0.5))
    }
}

#Preview {
    GridSwiftUI()
}

``````


