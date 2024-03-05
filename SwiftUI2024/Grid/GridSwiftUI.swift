//  /*
//
//  Project: SwiftUI2024
//  File: GridSwiftUI.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.03.2024
//
//  */

import SwiftUI

struct GridSwiftUI: View {
    var body: some View {
        
        Grid(alignment: .center, horizontalSpacing: 5, verticalSpacing: 5) {
            ForEach(0..<4) { rowIndex in
                GridRow {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex * 1)
                        cell(int: cellNumber)
                    }
                }
            }
            .cornerRadius(20)
        }
    }
    
    //Grid {
    //    GridRow {
    //        cell(int: 1)
    //        cell(int: 2)
    //        cell(int: 3)
    //        cell(int: 4)
    //    }
    //
    //    Divider()
    //        .gridCellUnsizedAxes(.horizontal)
    //        .foregroundColor(.red)
    //
    //    GridRow {
    //        cell(int: 5)
    //        cell(int: 6)
    //        cell(int: 7)
    //        cell(int: 8)
    //    }
    //}
    //.cornerRadius(10)
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .padding(30)
            .background(Color.gray.gradient)
    }
}

#Preview {
    GridSwiftUI()
}

