//
//  BenevolesDAO.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 16/03/2023.
//

import Foundation
import SwiftUI

class BenevolesDAO{
   
    private var apiUrl:URL
    @State private var benevoles:[BenevoleModel]=[]
    init() {
        guard let apiUrl=URL(string:"https://fine-pink-lab-coat.cyclic.app/benevole") else{
            fatalError("Missing URL")
        }
        self.apiUrl = apiUrl
    }
    
    func getAll() async throws -> [BenevoleModel]{
        let urlResquest:URLRequest=URLRequest(url:apiUrl)
        var benevoles:[BenevoleModel]=[]
        
        let (data,response) = try await URLSession.shared.data(for: urlResquest)
        guard(response as? HTTPURLResponse)?.statusCode == 200 else { throw ApiError.Failed }
        let decoder = JSONDecoder() // création d'un décodeur
        let decoded = try? decoder.decode([BenevolesDTO].self,from:data)
        guard let benevolesDTO=decoded else{return benevoles}
        for i in 0...benevolesDTO.count-1{
            let benevole:BenevoleModel=BenevoleModel(id: benevolesDTO[i]._id, prenom: benevolesDTO[i].prenom, nom: benevolesDTO[i].nom,email: benevolesDTO[i].email)
            benevoles.append(benevole)
        }
        return benevoles
    }
    
}
