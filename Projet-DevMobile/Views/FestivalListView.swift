//
//  FestivalListView.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 18/03/2023.
//

import SwiftUI

struct FestivalListView: View {
    
    @ObservedObject var festivalList:FestivalListModel
    private var festivalListIntent:FestivalListIntent
    private var isAdmin:Bool
    
    init(isAdmin:Bool) {
        let festivalListLoader:FestivalListModel = FestivalListModel(festivals:[])
        let festivalListIntentLoader = FestivalListIntent(festivalList:festivalListLoader)
        self.festivalList = festivalListLoader
        self.festivalListIntent = festivalListIntentLoader
        self.isAdmin=isAdmin
    }
    var body: some View {
        
        VStack{
                NavigationView{
                    List(festivalList.festivals){festival in
                        
                        if(isAdmin==true){
                            NavigationLink(destination:FestivalDetailView(festival: festival,festivalListIntent: festivalListIntent)){
                                Text(festival.nom+" "+festival.annee)
                            }
                        }
                        else{
                            NavigationLink(destination:BenevolesFestivalDetailView()){
                                Text(festival.nom+" "+festival.annee)
                            }
                        }
                    }.refreshable {
                        festivalListIntent.getFestivalList()
                    }
                }
        }.onAppear(perform:festivalListIntent.getFestivalList).onDisappear(perform: festivalListIntent.getFestivalList)
    }
}
