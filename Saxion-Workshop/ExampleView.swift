//
//  ExampleView.swift
//  Saxion-Workshop
//
//  Created by Mariëlle van der Meulen on 06/12/2023.
//

import SwiftUI

struct ExampleView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            Text("This is my orange heart")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.red)
            Text("🧡")
                .font(.system(size: 110))
            Button("Love it!") {
                dismiss()
            }
        }
        Divider()

        HStack {
            Text("This is my orange heart")
                .font(.title)
                .fontWeight(.light)
                .foregroundStyle(.teal)
            Text("🧡")
                .font(.system(size: 110))
            Button("Love it!") {
                dismiss()
            }
        }
        Divider()
        
        ZStack {
            Text("This is my nice Pizza app")
                .font(.title)
                .fontWeight(.ultraLight)
            Text("🧡")
                .font(.system(size: 110))
            Button("Love it!") {
                dismiss()
            }
        }
    }
}

#Preview {
    ExampleView()
}
