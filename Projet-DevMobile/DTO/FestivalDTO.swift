//
//  FestivalDTO.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 18/03/2023.
//

import Foundation
import SwiftUI
class FestivalDTO:Decodable,Encodable{
    var _id:String
    var nom:String
    var annee:String
    //var jours:[JourDeFestivalDTO]
    
    init(_id: String, nom: String, annee: String) {
        self._id = _id
        self.nom = nom
        self.annee = annee
    }
}

