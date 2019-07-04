//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State var users = ["Paul", "Taylor", "Adele"]

    var body: some View {
        NavigationView {
            List {
                ForEach(users.identified(by: \.self)) { user in
                    Text(user)
                }
                .onMove(perform: move)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }

    func move(from source: IndexSet, to destination: Int) {
        // sort the indexes low to high
        let reversedSource = source.sorted()

        // then loop from the back to avoid reordering problems
        for index in reversedSource.reversed() {
            // for each item, remove it and insert it at the destination
            users.insert(users.remove(at: index), at: destination)
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
