//
//  CreneauxListIntent.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 21/03/2023.
//

import Foundation
import SwiftUI



class CreneauxListIntent{
    @ObservedObject var creneauxList:CreneauxListModel
    
    
    init(creneauxList: CreneauxListModel) {
        self.creneauxList = creneauxList
    }
    
    func getCreneaux(festivalDay:JourDeFestivalModel){
    let creneauxListDAO=CreneauxListDAO()
        Task{
            guard let data = try? await creneauxListDAO.getAll(festivalDay:festivalDay) else{print("nan");return};
            print("les dataas:")
            print(data)
            self.creneauxList.uiState = .Loading(data)
        }
    }

          
}
