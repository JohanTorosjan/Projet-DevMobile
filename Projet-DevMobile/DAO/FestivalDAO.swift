//
//  FestivalDAO.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 20/03/2023.
//

import Foundation
import SwiftUI
class FestivalDAO{
    
    private var apiUrl:URL
    
    init() {
        guard let apiUrl=URL(string:"http://localhost:3000/festival") else{
            fatalError("Missing URL")
        }
        self.apiUrl = apiUrl
    }
    
    func update(festival:FestivalModel) async throws -> FestivalModel{
        
        
        guard let putUrl:URL = URL(string:self.apiUrl.absoluteString+"/"+festival.id) else{fatalError("Missing URL")}
        
        
        /// TODO
        var updatedFestival:FestivalModel=FestivalModel(id: "", nom: "", annee: "", jourDeFestival: [])
        /// RETURN VRAI FESTIVAL 
        
        var festivalDTO:FestivalDTO=FestivalDTO(_id: festival.id, nom: festival.nom, annee: festival.annee)
        guard let encoded=try? JSONEncoder().encode(festivalDTO) else{print("pas encoded");return updatedFestival}
        
        var urlResquest:URLRequest=URLRequest(url:putUrl)
      
        urlResquest.setValue("application/json", forHTTPHeaderField: "Content-type")
        urlResquest.httpMethod="PUT"
        do{
            let(data,_)=try await URLSession.shared.upload(for: urlResquest, from: encoded)
            print(data)
        }
        catch{
            throw ApiError.Failed
        }
        return updatedFestival
        
    }
    
}
