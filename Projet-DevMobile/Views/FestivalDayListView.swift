//
//  FestivalDayListView.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 20/03/2023.
//

import SwiftUI

struct FestivalDayListView: View {
    
    @ObservedObject var festival:FestivalModel
    
    @ObservedObject var festivalDayList:FestivalDayListModel
    
    private var festivalDayListIntent:FestivalDayListIntent
    
    init(festival: FestivalModel) {
        
        self.festival=festival
        let festivalDayListLoader:FestivalDayListModel = FestivalDayListModel(festivalDays:[])
        let festivalDayListIntentLoader:FestivalDayListIntent = FestivalDayListIntent(festivalDays:festivalDayListLoader)
        self.festivalDayList = festivalDayListLoader
        self.festivalDayListIntent = festivalDayListIntentLoader
    }

    var body: some View {
        
        
        
        VStack{
            if(festivalDayList.festivalDays.count>0){
                NavigationView{
                    List(festivalDayList.festivalDays){festivalDay in
                        NavigationLink(destination:FestivalDayDetailView(festivalDay: festivalDay,festivalDayListIntent: festivalDayListIntent,festival:festival)){
                            Text(festivalDay.nom)
                        }
                    }
                }
            }
            else{
                Text("No days for the moment")
            }
        }.onAppear{
            festivalDayListIntent.getFestivalDays(festival: festival)
        }
    }
    
}
