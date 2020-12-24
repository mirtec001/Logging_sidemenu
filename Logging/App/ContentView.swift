//
//  ContentView.swift
//  Logging
//
//  Created by Pete Misik on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        MainView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
