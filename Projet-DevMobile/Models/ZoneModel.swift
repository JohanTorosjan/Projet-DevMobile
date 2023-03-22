//
//  ZoneModel.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 18/03/2023.
//

import Foundation
import SwiftUI

class ZoneModel:ObservableObject,Identifiable{
    
    @Published public var nom:String
    @Published public var nbrvol:Int
    
    init(nom: String, nbrvol: Int) {
        self.nom = nom
        self.nbrvol = nbrvol
    }
   
}
