//
//  Villain.swift
//  AvengersFundaments
//
//  Created by José Ángel Rodríguez on 10/7/21.
//

import Foundation

typealias Villains = [Villain]

class Villain: Character {
    override init(name: String, lastname: String, image: String, score: Double, description: String) {
        super.init(name: name, lastname: lastname, image: image, score: score, description: description)
    }
}
