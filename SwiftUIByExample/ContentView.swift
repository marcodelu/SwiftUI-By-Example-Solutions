//
//  ContentView.swift
//  SwiftUIByExample
//
//  Created by Marco De Lucchi on 03/07/2019.
//  Copyright © 2019 Marco De Lucchi. All rights reserved.
//

import SwiftUI

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant

    var body: some View {
        Text(restaurant.name)
    }
}

struct ContentView: View {
    var body: some View {
        let first = Restaurant(name: "Joe's Original")
        let restaurants = [first]

        return NavigationView {
            List(restaurants) { restaurant in
                NavigationLink(destination: RestaurantView(restaurant: restaurant)) {
                    RestaurantRow(restaurant: restaurant)
                }
            }.navigationBarTitle(Text("Select a restaurant"))
        }
    }
}

struct RestaurantView: View {
    var restaurant: Restaurant

    var body: some View {
        Text("Come and eat at \(restaurant.name)")
            .font(.largeTitle)
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
