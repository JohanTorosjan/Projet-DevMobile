//
//  BenevoleModel.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 16/03/2023.
//

import Foundation
import SwiftUI

class BenevoleModel:ObservableObject,Identifiable{
    @Published public var id:String
    @Published public var prenom:String
    @Published public var nom:String
    @Published public var email:String
    
    init(id:String,prenom: String, nom: String, email: String) {
        self.id=id
        self.prenom = prenom
        self.nom = nom
        self.email = email
    }

}
