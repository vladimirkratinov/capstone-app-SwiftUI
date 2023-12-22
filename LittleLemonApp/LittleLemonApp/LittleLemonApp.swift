//
//  LittleLemonAppApp.swift
//  LittleLemonApp
//
//  Created by Vladimir Kratinov on 21.12.2023.
//

import SwiftUI

@main
struct LittleLemonApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            Onboarding().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
