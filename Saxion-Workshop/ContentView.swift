//
//  ContentView.swift
//  Saxion-Workshop
//
//  Created by Rick van Weersel on 05/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PizzaListView(pizzas: MockData.pizzas)
    }
}

#Preview {
    ContentView()
}
