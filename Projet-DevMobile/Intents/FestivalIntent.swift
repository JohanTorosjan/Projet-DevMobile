//
//  FestivalIntent.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 20/03/2023.

import Foundation
import SwiftUI

class FestivalIntent{
    @ObservedObject var festival:FestivalModel
    
    init(festival: FestivalModel) {
        self.festival = festival
    }
    
    
    
    
    func update(nom:String,annee:String){
        let festivalDAO:FestivalDAO=FestivalDAO()
        self.festival.nom=nom
        self.festival.annee=annee
        Task{
            guard let updatedFestival = try? await festivalDAO.update(festival: self.festival) else{print("BUG");return};
            print(updatedFestival.nom)
            self.festival.uiState = .Update(updatedFestival.nom,updatedFestival.annee)
            
        }
    }
}

