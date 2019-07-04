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
                .onDelete(perform: delete)
            }
            .navigationBarItems(trailing: EditButton())
        }
    }

    func delete(at offsets: IndexSet) {
        if let first = offsets.first {
            users.remove(at: first)
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
