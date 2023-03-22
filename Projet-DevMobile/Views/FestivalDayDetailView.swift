//
//  FestivalDayDetailView.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 20/03/2023.
//

import SwiftUI

struct FestivalDayDetailView: View {
    
    
    
    @ObservedObject var festivalDay:JourDeFestivalModel
    private var festivalDayIntent:FestivalDayIntent
    private var festivalDayListIntent:FestivalDayListIntent
    private var festival:FestivalModel
    private var dateFormatter:DateFormatter=DateFormatter()

    init(festivalDay: JourDeFestivalModel,festivalDayListIntent: FestivalDayListIntent,festival:FestivalModel) {
      
        self.festivalDayListIntent = festivalDayListIntent
        self.festival=festival
        self.dateFormatter.dateFormat = "HH.mm"
        self.festivalDayIntent = FestivalDayIntent(festivalDay: festivalDay)
        self.festivalDay = festivalDay

        
        
               
       
       
    }
 
    var body: some View {
        VStack{
            Form {

                Text(festivalDay.nom+" "+dateFormatter.string(from: festivalDay.beginingdate)+" "+dateFormatter.string(from: festivalDay.endingdate))

                    }
            Button("Update"){
                //TODO
                //festivalDayIntent.update(nom:nom,beginingdate:beginingdate,endingdate:endingdate)
            }
                    
        }.onDisappear{
            festivalDayListIntent.getFestivalDays(festival:festival)
        }
        
       CreneauxListView(festivalDay: festivalDay)
    }
}



