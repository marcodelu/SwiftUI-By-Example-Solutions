//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var showingAlert = false

    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Text("Show Alert")
        }
        .presentation($showingAlert) {
            Alert(title: Text("Are you sure you want to delete this?"),
                  message: Text("There is no undo"),
                  primaryButton: .destructive(Text("Delete")) {
                    print("Deleting...")
                  },
                  secondaryButton: .cancel())
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
