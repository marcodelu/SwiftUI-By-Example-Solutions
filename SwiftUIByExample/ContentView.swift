//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var scale: Length = 1.0

    var body: some View {
        Image("example-image")
            .scaleEffect(scale)

            .gesture(
                TapGesture()
                    .onEnded { _ in
                        self.scale += 0.1
                }
            )
            .gesture(
                LongPressGesture(minimumDuration: 2)
                    .onEnded { _ in
                        print("Pressed!")
                        self.scale -= 0.1
                }
            )
            .gesture(
                DragGesture(minimumDistance: 50)
                    .onEnded { _ in
                        print("Dragged!")
                        self.scale = 1.0
                }
            )
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
