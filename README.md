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

NavigationSplitView
===================
```````````````````ruby



```````````````````


