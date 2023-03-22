//
//  BenevolesListView.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 16/03/2023.
//

import SwiftUI
import Foundation
struct BenevolesListView: View {
    @ObservedObject var benevolesList:BenevolesListModel
    private var benevolesListIntent:BenevolesListIntent
    
    init() {
        let benevoleListLoader:BenevolesListModel = BenevolesListModel(benevoles:[])
        let benevolesListIntentLoader=BenevolesListIntent(benevolesList: benevoleListLoader)
        self.benevolesList = benevoleListLoader
        self.benevolesListIntent = benevolesListIntentLoader
    }
    var body: some View {
        VStack{
            Text("Benevoles")
                NavigationView{
                    List(benevolesList.benevoles){benevole in
                        NavigationLink(destination:BenevolesDetailView(benevole: benevole)){
                            Text(benevole.nom+" "+benevole.prenom)
                        }
                    }
                }
        }.onAppear(perform:benevolesListIntent.getBenevolesList)
        
    }
}

