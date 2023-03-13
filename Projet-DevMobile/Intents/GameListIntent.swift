//
//  GameListIntent.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 13/03/2023.
//

import Foundation
import SwiftUI

struct GameListIntent{
    
    private let apiUrl=URL(string:"https://fine-pink-lab-coat.cyclic.app/jeux")
    var urlResquest:URLRequest
    @ObservedObject var gameList:GameListViewModel
    //private var gameDTO:GameDTO
    
    init(gameList: GameListViewModel) {
        self.gameList = gameList
        guard let apiUrl=URL(string:"https://fine-pink-lab-coat.cyclic.app/jeux") else{
            fatalError("Missing URL")
        }
        self.urlResquest=URLRequest(url:apiUrl)
    }
    
    func loadDatas(){
        debugPrint("OUI")
        
        let dataTask=URLSession.shared.dataTask(with: urlResquest){
            (data,response,error) in
            if let error=error{
                print("ERROR: ",error)
                return
            }
            debugPrint("OUIII")
            
            
            guard let response=response as? HTTPURLResponse else{print("HERE");return}
            guard let data = data else { return }
            
            
            //// WRONG
            let decoder = JSONDecoder() // création d'un décodeur
            if let decoded = try? decoder.decode([GameDTO].self, from:
            data) { // si on a réussit à décoder
               print(decoded)
            }
            /////
        }
        dataTask.resume()
    }
    
    
    
}
