//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id = UUID()
    var username = "Anonymous"
}

struct ContentView : View {
    let users = [User(), User(), User()]

    var body: some View {
        List(users) { user in
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 40, height: 40)
            Text(user.username)
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
