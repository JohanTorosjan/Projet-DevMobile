//
//  CreneauxListModel.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 21/03/2023.
//

import Foundation
import SwiftUI

class CreneauxListModel:ObservableObject,Identifiable{
    @Published var creneaux:[CreneauxModel]
    @Published var uiState:CreneauxListStates = .Init{
        didSet{
            switch uiState{
            case .Loading(let creneauxList):
                self.creneaux=creneauxList
            default:break
            }
        }
    }
    
    init(creneaux: [CreneauxModel]) {
        self.creneaux = creneaux
    }
    
    
    
}

enum CreneauxListStates{
    case Init
    case Loading([CreneauxModel])
}
