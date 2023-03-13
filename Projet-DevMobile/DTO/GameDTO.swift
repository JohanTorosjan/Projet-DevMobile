//
//  GameDTO.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 13/03/2023.
//

import Foundation

 class GameDTO:Identifiable,Decodable{
     var id: Int
     var _id:String
     var nom:String
     var type:String
     
     init(id: Int, _id: String, nom: String, type: String) {
         self.id = id
         self._id = _id
         self.nom = nom
         self.type = type
     }
 }
 
