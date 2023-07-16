//
//  SwiftUI_WeatherAppApp.swift
//  SwiftUI-WeatherApp
//
//  Created by Florian Peyrony on 13/07/2023.
//

import SwiftUI

@main
struct SwiftUI_WeatherAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
