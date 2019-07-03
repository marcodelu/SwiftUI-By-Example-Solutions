//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    @State private var selectedColor = 0

    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Please choose a color")) {
                ForEach(0 ..< colors.count) {
                    Text(self.colors[$0]).tag($0)
                }
            }
            Text("You selected: \(colors[selectedColor])")
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
