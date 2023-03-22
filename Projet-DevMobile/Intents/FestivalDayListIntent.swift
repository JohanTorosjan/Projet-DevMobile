//
//  FestivalDayListIntent.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 20/03/2023.
//


import Foundation
import SwiftUI

class FestivalDayListIntent{
   
    @ObservedObject var festivalDays:FestivalDayListModel
    
    
    init(festivalDays: FestivalDayListModel) {
        self.festivalDays = festivalDays
    }
    
    func getFestivalDays(festival:FestivalModel){
    let festivalDaysDAO:FestivalDayListDAO=FestivalDayListDAO()
        Task{
            guard let data = try? await festivalDaysDAO.getAll(festival:festival) else{print("nan");return};
            self.festivalDays.uiState = .Loading(data)
        }
    }
    
    


          
}
