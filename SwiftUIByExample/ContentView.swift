//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

struct ContentView : View {
    var body: some View {
        List {
            Section(header: Text("Important tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }

            Section(header: Text("Other tasks")) {
                TaskRow()
                TaskRow()
                TaskRow()
            }

            Section(header: Text("Other tasks"), footer: Text("End")) {
                TaskRow()
                TaskRow()
                TaskRow()
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
