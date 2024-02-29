//
//  TransactionList.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 27.02.2024.
//

import SwiftUI

struct TransactionList: View {
	@EnvironmentObject var transactionVM: TransactionListViewModel
	
    var body: some View {
		VStack {
			List {
				ForEach(Array(transactionVM.groupTransactionByMonth()), id: \.key) { month, transactions in
					Section {
					
						ForEach(transactions) { transaction in
							TransactionRow(trancaction: transaction)
						}
					} header: {
						Text(month)
					}
					.listSectionSeparator(.hidden)
				}
			}.foregroundColor(Color.text)
			
			.listStyle(.plain)
		}.navigationTitle("Transactions")
    }
}

struct TransactionList_Previews: PreviewProvider {
	static let transactionListVM: TransactionListViewModel = {
		var vm = TransactionListViewModel()
		vm.transactions = transactionPreviewListData
		return vm
	}()
	
    static var previews: some View {
		NavigationView {
			TransactionList()
				.environmentObject(transactionListVM)
		}
    }
}
