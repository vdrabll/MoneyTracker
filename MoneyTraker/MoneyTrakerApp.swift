//
//  MoneyTrakerApp.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.02.2024.
//

import SwiftUI

@main
struct MoneyTrakerApp: App {
	@StateObject var transactionVM = TransactionListViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(transactionVM)
        }
    }
}
