//
//  TransactionRow.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 25.02.2024.
//

import SwiftUI
import SwiftUIFontIcon

struct TransactionRow: View {
	var trancaction: Transaction
    var body: some View {
		HStack(spacing: 20) {
			// Category icon
			RoundedRectangle(cornerRadius: 20, style: .continuous)
				.fill(Color.icon.opacity(0.3))
				.frame(width: 44, height: 44 )
				.overlay {
					FontIcon.text(.awesome5Solid(code: trancaction.icon ), fontsize: 24, color: Color.icon)
				}
			
			VStack(alignment: .leading, spacing: 6) {
				Text(trancaction.merchant)
					.font(.subheadline)
					.bold()
					.lineLimit(1)
				
				Text(trancaction.category)
					.font(.footnote)
					.opacity(0.7)
					.lineLimit(1)
				
				
				Text(trancaction.dateParsed, format: .dateTime.year().month().day())
					.font(.footnote)
					.foregroundColor(.secondary)
			}
			Spacer() 
			Text(trancaction.signedAmount, format: .currency(code: "USD"))
				.font(.footnote)
				.foregroundColor(trancaction.type == TransactionType.credit.rawValue ? Color.text: .primary)
		}
		.padding([.top, .bottom], 8 )
	}
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
		TransactionRow(trancaction: transactionPreviewData )
    }
}
