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
//        Rectangle()
//            .fill(Color.red)
//            .frame(width: 200, height: 200)

        Circle()
            .fill(Color.blue)
            .frame(width: 50, height: 50)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
