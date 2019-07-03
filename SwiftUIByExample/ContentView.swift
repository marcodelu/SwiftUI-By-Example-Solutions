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
//        guard let img = UIImage(named: "example-image") else {
//            fatalError("Unable to load image")
//        }
//
//        return Image(uiImage: img)

        Image(systemName: "cloud.heavyrain.fill")
            .foregroundColor(.red)
            .font(.largeTitle)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
