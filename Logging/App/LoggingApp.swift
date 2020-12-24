//
//  LoggingApp.swift
//  Logging
//
//  Created by Pete Misik on 12/23/20.
//

import SwiftUI

@main
struct LoggingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
