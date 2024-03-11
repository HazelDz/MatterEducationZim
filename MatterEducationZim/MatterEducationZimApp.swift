//
//  MatterEducationZimApp.swift
//  MatterEducationZim
//
//  Created by admin on 11/3/2024.
//

import SwiftUI

@main
struct MatterEducationZimApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
