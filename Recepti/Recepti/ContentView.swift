//
//  ContentView.swift
//  Recepti
//
//  Created by MacLab6 on 22.10.22..
//

import SwiftUI

struct ContentView: View {
    @StateObject var wm = CategoriesViewModel()
    
    var body: some View {
        NavigationView {
            List{
                ForEach(
                    wm.categories, id: \.self.idCategory
                ){ category in
                    Text(category.strCategory)
                }
            
            }.navigationTitle("Recepies Categories")
                
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
