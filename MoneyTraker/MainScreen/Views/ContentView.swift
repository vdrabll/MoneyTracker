//
//  ContentView.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.02.2024.
//

import SwiftUI
import Charts

struct ContentView: View {
	@EnvironmentObject var transactionVM: TransactionListViewModel
	
	var body: some View {
		NavigationView {
			ScrollView {
				VStack (alignment: .leading, spacing: 24) {
					// Title
					Text("Overview")
						.font(.title)
						.bold()
				}
				.padding()
				.frame(maxWidth: .infinity)
				
				Chart(transactionVM.transactions) { transaction in
					LineMark(x:.value(transaction.date, transaction.date ),
							 y: .value(String(transaction.amount), transaction.amount))
					
				}
				RecentTransactions()
			}
			
			
		}
		.background(Color.background)
		.navigationBarTitleDisplayMode(.inline)
		.toolbar {
			
			ToolbarItem {
				Image(systemName:"bell.badge")
					.symbolRenderingMode(.hierarchical)
				
			}
		}
	}
	//		.navigationViewStyle(.stack)
}


struct ContentView_Previews: PreviewProvider {
	
	static let transactionListVM: TransactionListViewModel = {
		var vm = TransactionListViewModel()
		vm.transactions = transactionPreviewListData
		return vm
	}()
	
	static var previews: some View {
		ContentView()
			.environmentObject(transactionListVM)
	}
}
