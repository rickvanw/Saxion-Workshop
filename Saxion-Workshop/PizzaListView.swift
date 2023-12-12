//
//  PizzaListView.swift
//  Saxion-Workshop
//
//  Created by Rick van Weersel on 05/12/2023.
//

import SwiftUI

struct PizzaListView: View {
    var pizzas: [Pizza]
    @State private var isAboutViewOpened = false
    
    var body: some View {
        NavigationStack {
            List(pizzas) { pizza in
                NavigationLink {
                    PizzaDetailView(pizza: pizza)
                } label: {
                    HStack {
                        Image(pizza.imageName)
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
            }
            .navigationTitle("Pizza's")
            .toolbar {
                Button("About") {
                    isAboutViewOpened.toggle()
                }
            }
        }
        .sheet(isPresented: $isAboutViewOpened) {
            AboutView()
        }
    }
}

#Preview {
    PizzaListView(pizzas: MockData.pizzas)
}
