//
//  ZoneDTO.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 18/03/2023.
//

import Foundation
import SwiftUI

class ZoneDTO:Decodable{
    var nom:String
    var nombreBenevolesNecessaire:String
    init(nom: String, nombreBenevolesNecessaire: String) {
        self.nom = nom
        self.nombreBenevolesNecessaire = nombreBenevolesNecessaire
    }
    
}
