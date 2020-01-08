//
//  Quote.swift
//  SimpsonsViper
//
//  Created by Gaston Daniel Gabriel Grippi on 07/01/2020.
//  Copyright © 2020 Gaston Daniel Gabriel Grippi. All rights reserved.
//

import Foundation

struct Quote {
    var character: String!
    var quote: String!
    var characterImage: String!
    
    init(attributes: [String: String]) {
        character = attributes["character"]
        quote = attributes["quote"]
        characterImage = attributes["image"]
    }
}
