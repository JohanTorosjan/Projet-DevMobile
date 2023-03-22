//
//  EventsDTO.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 18/03/2023.
//

import Foundation
import SwiftUI
class EventsDTO:Decodable{
    
    
    var _id:String
    var beginingdate:String
    var endingdate:String
    //var benevoles:[BenevolesDTO]
   // var zone:ZoneDTO
    
    init(_id: String, beginingdate: String, endingdate: String) {
        self._id = _id
        self.beginingdate = beginingdate
        self.endingdate = endingdate
        //self.benevoles = benevoles
    }
    

    
}
