//
//  AdminMainView.swift
//  Projet-DevMobile
//
//  Created by Johan Torosjan on 17/03/2023.
//

import SwiftUI

struct AdminMainView: View {
    var body: some View {
        
        Text("Manage your festivals: ")
        NavigationView{
            VStack{
                FestivalListView(isAdmin:true)
            }
        }
    }
}

struct AdminMainView_Previews: PreviewProvider {
    static var previews: some View {
        AdminMainView()
    }
}
