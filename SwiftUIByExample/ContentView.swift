//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var favoriteColor = 0
    var colors = ["Red", "Green", "Blue"]

    var body: some View {
        VStack {
            SegmentedControl(selection: $favoriteColor) {
                ForEach(0..<colors.count) { index in
                    Text(self.colors[index]).tag(index)
                }
            }

            Text("Value: \(colors[favoriteColor])")
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
