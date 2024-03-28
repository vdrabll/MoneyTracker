//
//  AccountDitailView.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 26.03.2024.
//

import SwiftUI

struct AccountDitailView: View {
	let accunt: Acount
    var body: some View {
		NavigationStack {
			HStack(alignment: .center) {
				Text(String(accunt.amound))
					.font(.largeTitle)
			}
			
			List {
				ForEach(accunt.transactions.sorted(by: {  $0.date.compare($1.date) == .orderedDescending })) { tranasction in
					Section(header: Text(tranasction.date, style: .date)) {
					
						Text(tranasction.name)
					}
				}
			}
		}
    }
}

struct AccountDitailView_Previews: PreviewProvider {
	
    static var previews: some View {
		AccountDitailView(accunt: Acount(id: 1, name: "кошелек", amound: 3000, transactions: [
			.init(id: 1, name: "cofe", amound: 180, cathegory: "Кафе", date: Date()),
			.init(id: 2, name: "пирожное", amound: 150, cathegory: "Кафе", date: Date(timeIntervalSinceNow:  -125556789.0)),
			.init(id: 2, name: "шоколад", amound: 150, cathegory: "Кафе", date: Date(timeIntervalSinceNow:  145556789.0)),
			.init(id: 2, name: "корндог", amound: 150, cathegory: "Кафе", date: Date(timeIntervalSinceNow:  145556789.0))])
    )}
}
