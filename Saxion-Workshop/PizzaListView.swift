//
//  PizzaListView.swift
//  Saxion-Workshop
//
//  Created by Rick van Weersel on 05/12/2023.
//

import SwiftUI

struct PizzaListView: View {
    var pizzas: [Pizza]
    
    var body: some View {
        NavigationView {
            List(pizzas) { pizza in
                HStack {
                    pizza.image
                        .resizable()
                        .frame(maxWidth: 50, maxHeight: 50)
                        .clipShape(.circle)
                    VStack(alignment: .leading) {
                        Text(pizza.name)
                        Text(pizza.description)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("Pizza's")
        }
    }
}

#Preview {
    PizzaListView(
        pizzas:
            [
                Pizza(name: "Margherita", description: "With cheese", imageName: "margherita"),
                Pizza(name: "Pepperoni", description: "With pepperoni", imageName: "pepperoni")
            ]
    )
}
