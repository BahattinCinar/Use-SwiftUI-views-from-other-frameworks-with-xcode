//
//  Use_SwiftUI_views_from_other_frameworksApp.swift
//  Use SwiftUI views from other frameworks
//
//  Created by Behaüddin Çınar on 9.02.2024.
//

import SwiftUI
import SwiftData

@main
struct Use_SwiftUI_views_from_other_frameworksApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
