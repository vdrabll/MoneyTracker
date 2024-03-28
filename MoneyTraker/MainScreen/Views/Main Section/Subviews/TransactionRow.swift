//
//  TransactionRow.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//

import SwiftUI

struct TransactionRow: View {
	@State var amound = 11
	@State var name = "Iphone"
	@State var cathegory = "Electronic"
	
    var body: some View {
		HStack {
			Text(String(amound))
				.bold()
				.fontWeight(.heavy)
			Spacer()
			VStack {
				Text(name)
				Text(cathegory)
					.font(.caption)
			}
		}.padding()
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow()
    }
}
