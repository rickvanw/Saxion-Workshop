//
//  AboutView.swift
//  Saxion-Workshop
//
//  Created by Rick van Weersel on 07/12/2023.
//

import SwiftUI

struct AboutView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This is my nice Pizza app")
                .font(.title)
            Text("🍕")
                .font(.system(size: 100))
            Button("Close") {
                dismiss()
            }
        }
    }
}

#Preview {
    AboutView()
}
