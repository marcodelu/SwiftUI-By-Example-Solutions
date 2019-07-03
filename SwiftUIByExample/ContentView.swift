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
        ZStack(alignment: .center) {
            Image("example-image")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Hacking with Swift")
                .font(.largeTitle)
                .background(Color.black)
                .foregroundColor(.white)
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
