//  /*
//
//  Project: SwiftUI2024
//  File: ControlGroupSwiftUI.swift
//  Created by: Elaidzha Shchukin
//  Date: 06.03.2024
//
//  */

import SwiftUI

struct ControlGroupSwiftUI: View {
    var body: some View {
        Menu("Open Menu") {
            ControlGroup("Food"){
                Button("Vegies") {
                    
                }
                Button("Sweet") {
                    
                }
                Menu("Fruits") {
                    Button("Apple") {
                        
                    }
                    Button("Banana") {
                        
                    }
                }
            }
            Button("Hey!") {
                
            }
            Menu("Mood") {
                Button("Hey!") {
                    
                }
                Menu("How are you?") {
                    Button("Good") {
                        
                    }
                    Button("Bad") {
                        
                    }
                }
            }
        }
        .buttonStyle(.bordered)
        .font(.system(size: 18, weight: .semibold, design: .rounded))
        .foregroundStyle(Color(.label))
    }
}

#Preview {
    ControlGroupSwiftUI()
}
