//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var showingSheet = false

    var sheet: ActionSheet {
        ActionSheet(title: Text("Action"),
                    message: Text("Quote mark"),
                    buttons: [
                        .default(Text("Show Sheet"), onTrigger: {
                            self.showingSheet = false
                        })
                    ]
        )
    }

    var body: some View {
        Button(action: {
            self.showingSheet = true
        }) {
            Text("Woo")
        }
            .presentation(showingSheet ? sheet : nil)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
