//
//  AccountListView.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 26.03.2024.
//

import SwiftUI

struct Acount: Hashable, Identifiable {
	var id: Int
	var name: String
	var amound: Int
	var transactions: [Trations]
}

struct Trations: Identifiable, Hashable {
	var id: Int
	var name: String
	var amound: Int
	var cathegory: String
	var date: Date
}

struct AccountListView: View {
	@State var accounts: [Acount] = [
		.init(id: 1, name: "кошелек", amound: 3000, transactions: [.init(id: 1, name: "cofe", amound: 180, cathegory: "Кафе", date: Date()),
																   .init(id: 2, name: "пирожное", amound: 150, cathegory: "Кафе", date: Date())])
	]
	
	var body: some View {
		NavigationStack  {
			VStack {
				AccountListTitle()
				
				List {
					ForEach(accounts) { account in
						NavigationLink(account.name) {
							AccountDitailView(accunt: account)
						}
					}
				}
			}
		}
	}
}

struct AccountListView_Previews: PreviewProvider {
	static var previews: some View {
		AccountListView()
	}
}
