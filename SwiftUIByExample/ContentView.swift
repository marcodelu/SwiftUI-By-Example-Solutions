//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var enableLogging = false

    @State var selectedColor = 0
    @State var colors = ["Red", "Green", "Blue"]

    var body: some View {
        NavigationView {
            Form {
                SegmentedControl(selection: $selectedColor) {
                    ForEach(0 ..< colors.count) {
                        Text(self.colors[$0]).tag($0)
                    }
                }

                Toggle(isOn: $enableLogging) {
                    Text("Enable Logging")
                }

                Button(action: {
                    // activate theme!
                }) {
                    Text("Save changes")
                }
            }.navigationBarTitle(Text("Settings"))
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
