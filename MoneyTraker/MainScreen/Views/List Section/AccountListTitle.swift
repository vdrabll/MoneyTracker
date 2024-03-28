//
//  AccountListTitle.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 26.03.2024.
//

import SwiftUI

struct AccountListTitle: View {
    var body: some View {
		HStack {
			Text("Accounts")
				.font(.title)
			Spacer()
			NavigationLink("add new", destination: AccountCreationView())
		}
		.padding()
    }
}

struct AccountListTitle_Previews: PreviewProvider {
    static var previews: some View {
        AccountListTitle()
    }
}
