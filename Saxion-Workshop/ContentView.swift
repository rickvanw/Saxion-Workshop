//
//  ContentView.swift
//  Saxion-Workshop
//
//  Created by Rick van Weersel on 05/12/2023.
//

import SwiftUI

struct ContentView: View {
    private let pizzas = [
        Pizza(name: "Margherita", description: "With cheese", imageName: "margherita"),
        Pizza(name: "Pepperoni", description: "With pepperoni", imageName: "pepperoni")
    ]
    
    var body: some View {
        PizzaListView(pizzas: pizzas)
    }
}

#Preview {
    ContentView()
}
