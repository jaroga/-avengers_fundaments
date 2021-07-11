//
//  Superhero.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 10/7/21.
//

import Foundation

typealias Superheroes = [Superheroe]

class Superheroe: Character {
    override init(name: String, lastname: String, image: String, score: Float, description: String) {
        super.init(name: name, lastname: lastname, image: image, score: score, description: description)
    }
}
