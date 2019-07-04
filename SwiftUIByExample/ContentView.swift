//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var showingAdvancedOptions = false
    @State var enableLogging = false

    var body: some View {
        Form {
            Section {
                Toggle(isOn: $showingAdvancedOptions.animation()) {
                    Text("Show advanced options")
                }

                if showingAdvancedOptions {
                    Toggle(isOn: $enableLogging) {
                        Text("Enable logging")
                    }
                }
            }
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
