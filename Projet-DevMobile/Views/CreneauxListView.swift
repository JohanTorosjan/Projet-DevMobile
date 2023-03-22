//
//  CreneauxListView.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 21/03/2023.
//

import SwiftUI

struct CreneauxListView: View {
    
    @ObservedObject var creneauxList:CreneauxListModel
    @ObservedObject var festivalDay:JourDeFestivalModel
    private var creneauxListIntent:CreneauxListIntent
    private var dateFormatter=DateFormatter()
    
    init(festivalDay: JourDeFestivalModel) {
        let creneauxListLoader:CreneauxListModel=CreneauxListModel(creneaux: [])
        self.creneauxList = creneauxListLoader
        self.dateFormatter.dateFormat = "HH.mm"
        self.festivalDay = festivalDay
        self.creneauxListIntent = CreneauxListIntent(creneauxList:creneauxListLoader)
    }
    
    var body: some View {
        VStack{
            
            
            NavigationView{
                List(creneauxList.creneaux){creneau in
                    NavigationLink(destination:CreneauxDetailView()){
                        Text(dateFormatter.string(from: creneau.beginingdate))
                        Text(dateFormatter.string(from: creneau.endingdate))
                    }
                }
            }
            
        }.onAppear{creneauxListIntent.getCreneaux(festivalDay:festivalDay)}
    }
}

