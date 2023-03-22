//
//  DTO.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 19/03/2023.
//

import Foundation
import SwiftUI

struct FFestivalDTO: Codable {
    let id, nom, annee: String
    let jours: [JourDTO]
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case nom, annee, jours
        case v = "__v"
    }
}

struct JourDTO: Codable {
    let id, nom: String
    let begining, ending: Date
    let creneaux: [CreneauDTO]
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case nom, begining, ending, creneaux
        case v = "__v"
    }
}

struct CreneauDTO: Codable {
    let id: String
    let beginingdate, endingdate: Date
    let benevoles: [String]
    let v: Int

    enum CodingKeys: String, CodingKey {
        case id = "_id"
        case beginingdate, endingdate, benevoles
        case v = "__v"
    }
}

