//
//  FestivalDayListModel.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 20/03/2023.
//


import Foundation
import SwiftUI

class FestivalDayListModel:ObservableObject,Identifiable{
    @Published var festivalDays:[JourDeFestivalModel]
    @Published var uiState:FestivalDayListStates = .Init{
        didSet{
            switch uiState{
            case .Loading(let festivalDays):
                self.festivalDays=festivalDays
            default:break
            }
        }
    }
    
    init(festivalDays: [JourDeFestivalModel]) {
        self.festivalDays = festivalDays
    }
    
    
    
}

enum FestivalDayListStates{
    case Init
    case Loading([JourDeFestivalModel])
}
