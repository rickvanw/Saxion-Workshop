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
    var imageName: String
    
    init(name: String, description: String, imageName: String) {
        self.name = name
        self.description = description
        self.imageName = imageName
    }
}
