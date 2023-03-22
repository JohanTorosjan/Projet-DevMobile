//
//  FestivalModel.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 18/03/2023.
//

import Foundation
import SwiftUI

class FestivalModel:ObservableObject,Identifiable{
    @Published public var id:String
    @Published public var nom:String
    @Published public var annee:String
    @Published public var jourDeFestival:[JourDeFestivalModel]
    
    
    @Published var uiState:FestivalStates = .Init{
        didSet{
            switch uiState{
            case .Update(let nom,let annee):
                self.nom=nom
                self.annee=annee
            default:break
            }
        }
    }
    
    init(id:String, nom: String, annee: String, jourDeFestival: [JourDeFestivalModel]) {
        self.id = id
        self.nom = nom
        self.annee = annee
        self.jourDeFestival = jourDeFestival
    }
    
    
    
}

enum FestivalStates{
    case Init
    case Update(String,String)
}

