//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct Result {
    var id = UUID()
    var score: Int
}

struct ContentView : View {
//    let colors: [Color] = [.red, .green, .blue]

    let results = [Result(score: 8), Result(score: 5), Result(score: 10)]

    var body: some View {
//        VStack(alignment: .leading) {
//            ForEach((1...10).reversed()) {
//                Text("\($0)…")
//            }
//
//            Text("Ready or not, here I come!")
//        }

//        VStack {
//            ForEach(colors.identified(by: \.self)) { color in
//                Text(color.description.capitalized)
//                    .padding(20)
//                    .background(color)
//            }
//        }

        VStack {
            ForEach(results.identified(by: \.id)) { result in
                Text("Result: \(result.score)")
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
