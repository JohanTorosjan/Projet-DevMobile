//
//  BenevoleIntent.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 17/03/2023.
//

import Foundation
import SwiftUI

class BenevoleIntent{
    @ObservedObject var benevole:BenevoleModel
    
    
    init(benevole: BenevoleModel) {
        self.benevole = benevole
    }
    
}

