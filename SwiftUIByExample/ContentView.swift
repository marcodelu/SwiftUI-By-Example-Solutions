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
            Text("Tap me!")
                .tapAction {
                    print("Tapped!")
            }

            Image("example-image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .tapAction(count: 2) {
                    print("Double tapped!")
            }

            // How to make print() work
            // right-click on the play button in the preview canvas and choose “Debug Preview”
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
