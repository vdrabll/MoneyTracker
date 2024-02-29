//
//  TransactionListViewModel.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 25.02.2024.
//

import Foundation
import Combine
import Collections

typealias TransactionGroup = OrderedDictionary<String,[Transaction]>

final class TransactionListViewModel: ObservableObject { // это часть combine фреймворка превращающего обьект в publisher кокторый уведомляет в своих изменениях
	
	@Published var transactions: [Transaction] = []  // @Published отвечает за отправку сообщений всем
	private var cancellebles = Set<AnyCancellable>()
	
	init() {
		self.getTransactions()
	}
	
	func getTransactions() {
		guard let url = URL(string: "https://designcode.io/data/transactions.json") else {
			print("invalid")
			return
		}
		
		URLSession.shared.dataTaskPublisher(for: url).tryMap { (data, response) -> Data in
			guard let httpResponce = response as? HTTPURLResponse, httpResponce.statusCode == 200 else {
				dump(response)
				throw URLError(.badServerResponse)
			}
			print(data)
			return data
		}
			.decode(type: [Transaction].self, decoder: JSONDecoder())
			.receive(on: DispatchQueue.main)
			.sink { completion in
				print(completion)
				switch completion {
					case .failure(let error):
						print("Error: \(error.localizedDescription)")
					case .finished:
						print("200")
				}
			} receiveValue: { [weak self] result in
				self?.transactions = result
				dump(self?.transactions)
			}
			.store(in: &cancellebles)
	}
	
	func groupTransactionByMonth() -> TransactionGroup {
		guard !transactions.isEmpty else { return [:] }
		
		let groupedTransactions = TransactionGroup(grouping: transactions, by: {$0.month})
		return groupedTransactions
	}
}
