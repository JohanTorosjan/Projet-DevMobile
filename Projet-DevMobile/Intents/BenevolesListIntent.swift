//
//  BenevolesListIntent.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 16/03/2023.
//

import Foundation
import SwiftUI

class BenevolesListIntent{
   
    @ObservedObject var benevolesList:BenevolesListModel
    
    
    //private var gameDAO:GameDAO=GameDAO()
    
    init(benevolesList: BenevolesListModel) {
        self.benevolesList = benevolesList
    }
    
    func getBenevolesList(){
        let benevoleDAO:BenevolesDAO=BenevolesDAO()
        Task{
            guard let data = try? await benevoleDAO.getAll() else{return};
            self.benevolesList.uiState = .Loading(data)
        }
    }
    
}
