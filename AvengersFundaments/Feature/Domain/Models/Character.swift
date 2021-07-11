//
//  Character.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 10/7/21.
//

import Foundation

class Character {
    
    var name: String
    var lastname: String
    var image: String?
    var score: Float = 0.0
    var description: String
    
    init(name: String, lastname: String, image: String, score: Float, description: String) {
        self.name = name
        self.lastname = lastname
        self.image = image
        self.score = score
        self.description = description
    }
}
