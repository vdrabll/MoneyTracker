//
//  MoneyTrakerApp.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.02.2024.
//

import SwiftUI

@main
struct MoneyTrakerApp: App {
	let persistenceController = CoreDataController.sheared
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
