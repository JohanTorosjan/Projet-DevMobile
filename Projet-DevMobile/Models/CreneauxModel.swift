//
//  CreneauxModel.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 21/03/2023.
//
import Foundation
import SwiftUI

class CreneauxModel:ObservableObject,Identifiable{
    @Published public var id:String
    @Published public var beginingdate:Date
    @Published public var endingdate:Date
    @Published public var zone:ZoneModel
    @Published public var benevoles:[BenevoleModel]
    
    init(id:String,beginingdate: Date, endingdate: Date, zone: ZoneModel, benevoles: [BenevoleModel]) {
        self.beginingdate = beginingdate
        self.id=id
        self.endingdate = endingdate
        self.zone = zone
        self.benevoles = benevoles
    }
}
