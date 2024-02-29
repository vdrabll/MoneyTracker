//
//  Extentions.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 25.02.2024.
//  Это файл с кастомными цветами для удобного использования в приложении
//

import Foundation
import SwiftUI

extension Color {
	static let background = Color("Background")
	static let icon = Color("Icon")
	static let text = Color("Text")
	static let systemBackground = Color(.systemBackground)
	
}

extension DateFormatter {
	static let AllNumericRussia: DateFormatter = {
		var formater = DateFormatter()
		formater.dateFormat = "MM/dd/yyyy"
		return formater
	}()
	
}

extension String {
	func parceDate() -> Date {
		guard let parcedDate = DateFormatter.AllNumericRussia.date(from: self) else {
			return Date()
		}
		return parcedDate
	}
}
