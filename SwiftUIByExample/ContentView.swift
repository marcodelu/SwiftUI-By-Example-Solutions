//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI
import Combine

class UserSettings: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()

    var score = 0 {
        didSet {
            didChange.send(())
        }
    }
}

struct ContentView : View {
    @ObjectBinding var settings = UserSettings()

    var body: some View {
        VStack {
            Text("Your score is \(settings.score)")
            Button(action: {
                self.settings.score += 1
            }) {
                Text("Increase Score")
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
