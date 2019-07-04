//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {

    var body: some View {
        VStack {
            Group {
                Text("Line1")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
            }

            Group {
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line")
                Text("Line11")
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
