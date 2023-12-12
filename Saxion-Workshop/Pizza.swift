//
//  Pizza.swift
//  Saxion-Workshop
//
//  Created by Rick van Weersel on 05/12/2023.
//

import Foundation

struct Pizza: Identifiable {
    var id = UUID()
    var name: String
    var description: String
    var longdescription: String
    var imageName: String
    
    init(name: String, description: String, longdescription: String, imageName: String) {
        self.name = name
        self.description = description
        self.longdescription = longdescription
        self.imageName = imageName
    }
}
