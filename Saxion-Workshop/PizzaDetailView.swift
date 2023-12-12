//
//  PizzaDetailView.swift
//  Saxion-Workshop
//
//  Created by Rick van Weersel on 05/12/2023.
//

import SwiftUI

struct PizzaDetailView: View {
    let pizza: Pizza
    
    var body: some View {
        ScrollView {
            ZStack {
                Image("background")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(pizza.imageName)
                    .resizable()
                    .frame(width: 160, height: 160)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .shadow(radius: 7)
                    .offset(y: 20)
                    .padding()
            }
            .clipShape(.rect(cornerRadius: 15))
            VStack(alignment: .leading) {
                Text(pizza.name)
                    .font(.title)
                Text(pizza.description)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Divider()
                Text(pizza.longDescription)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .background(Color(.secondarySystemBackground))
        .navigationTitle(pizza.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    PizzaDetailView(
        pizza: MockData.pizzas.first!
    )
}
