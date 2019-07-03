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
//        Text("Hacking with Swift")
//            .font(.largeTitle)
//            .background(
//                Image("example-image")
//                    .resizable()
//                    .frame(width: 100, height: 100)
//            )

        Text("Hacking with Swift")
            .font(.largeTitle)
            .background(Circle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            )
                .clipped()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
