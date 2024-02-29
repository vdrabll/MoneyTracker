//
//  RecentTransactions.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 25.02.2024.
//

import SwiftUI

struct RecentTransactions: View {
	@EnvironmentObject var transactionVM: TransactionListViewModel
    var body: some View {
		VStack {
			HStack {
				Text("Resent Transactions")
					.bold()
				Spacer()
				NavigationLink {
					TransactionList()
				} label: {
					HStack(spacing: 4) {
						Text("See all")
						Image(systemName: "shevron.right")
					}
					.foregroundColor(.text)
				}
			}

			.padding(.top)
			ForEach(Array(transactionVM.transactions.prefix(5).enumerated()), id: \.element) {id, transaction in
				TransactionRow(trancaction:transaction )
					

				Divider()
					.opacity(id == 4 ? 0 : 1)
			}
		}
		.padding()
		.foregroundColor(.background)
		.clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
		.shadow(color: Color.primary.opacity(0.2), radius: 10, x: 0, y: 5)
	}
	
}

struct RecentTransactions_Previews: PreviewProvider {
	static let transactionListVM: TransactionListViewModel = {
		var vm = TransactionListViewModel()
		vm.transactions = transactionPreviewListData
		return vm
	}()
    static var previews: some View {
        RecentTransactions()
			.environmentObject(transactionListVM)
    }
}
