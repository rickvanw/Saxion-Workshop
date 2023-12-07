//
//  Pizza.swift
//  Saxion-Workshop
//
//  Created by Rick van Weersel on 05/12/2023.
//

import Foundation
import SwiftUI

struct Pizza: Identifiable {
    var id = UUID()
    var name: String
    var description: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    init(name: String, description: String, imageName: String) {
        self.name = name
        self.description = description
        self.imageName = imageName
    }
}
