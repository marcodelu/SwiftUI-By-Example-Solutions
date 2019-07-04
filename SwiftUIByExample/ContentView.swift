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
        NavigationView {
            NavigationLink(destination: DetailView()) {
                Text("Click")
            }.navigationBarTitle(Text("Navigation"))
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Detail")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
