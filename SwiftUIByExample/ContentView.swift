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
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        NavigationView {
            VStack {
                // A button that writes to the environment settings
                Button(action: {
                    self.settings.score += 1
                }) {
                    Text("Increase Score")
                }

                NavigationLink(destination: DetailView()) {
                    Text("Show Detail View")
                }
            }
        }
    }
}

struct DetailView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        // A text view that reads from the environment settings
        Text("Score: \(settings.score)")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserSettings())
    }
}
#endif
