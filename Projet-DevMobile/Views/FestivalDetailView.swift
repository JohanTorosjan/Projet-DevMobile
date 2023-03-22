//
//  FestivalDetailView.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 19/03/2023.
//

import SwiftUI

struct FestivalDetailView: View {
    
    @ObservedObject var festival:FestivalModel
    private var festivalIntent:FestivalIntent
    private var festivalListIntent:FestivalListIntent
    @State private var nom:String
    @State private var annee:String
    
 
    init(festival: FestivalModel,festivalListIntent:FestivalListIntent) {
        self.festivalListIntent=festivalListIntent
        self.nom=festival.nom
        self.annee=festival.annee
        self.festival = festival
        self.festivalIntent=FestivalIntent(festival: festival)
    }
    
    var body: some View {
        VStack{
            Form {
                Section {
                    TextField("Name:", text: $nom)
                    TextField("Year", text: $annee)
                        }
                    }
                    Button("Update"){
                        festivalIntent.update(nom:nom,annee:annee)
                    }
            FestivalDayListView(festival:festival)
        }.onDisappear(perform: festivalListIntent.getFestivalList)
            
            
        }
    }



