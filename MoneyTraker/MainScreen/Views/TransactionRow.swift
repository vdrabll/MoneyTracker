//
//  TransactionRow.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//

import SwiftUI

struct TransactionRow: View {
	var amound = 11
	var name = "Iphone"
	var cathegory = "Electronic"
	
    var body: some View {
		HStack {
			Text(String(amound))
				.bold()
				.fontWeight(.heavy)
			
			VStack {
				Text(name)
				Text(cathegory)
					.font(.caption)
					
				
			}
			Spacer()
			
			Text(Date(), style: .date)
				
		}
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow()
    }
}
