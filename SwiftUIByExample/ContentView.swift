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
//        Text("Hello World")
//            .lineLimit(3)
//        Text("Hello World")
//            .lineLimit(nil)
        Text("This is an extremely long string that will never fit even the widest of Phones")
            .truncationMode(.middle)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
