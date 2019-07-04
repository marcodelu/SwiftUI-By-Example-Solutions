//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var strengths = ["Mild", "Medium", "Mature"]

    @State var selectedStrength = 0

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedStrength, label: Text("Strength")) {
                        ForEach(0 ..< strengths.count) {
                            Text(self.strengths[$0]).tag($0)

                        }
                    }
//                        .pickerStyle(.wheel)
                }
            }.navigationBarTitle(Text("Select your cheese"))

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
