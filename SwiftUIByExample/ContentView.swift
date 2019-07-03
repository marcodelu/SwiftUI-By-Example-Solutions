//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    static let taskDateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()

    var dueDate = Date()

    var body: some View {
        Text("Task due date: \(dueDate, formatter: Self.taskDateFormat)")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
