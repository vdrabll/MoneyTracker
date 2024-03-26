//
//  AccountsView.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//

import SwiftUI

struct TransactionView: View {
	@Environment(\.presentationMode) var presentationMode
	var body: some View {
		NavigationStack() {
			
			VStack(alignment: .leading) {
				TextFields()
				Spacer()
					.padding(.horizontal)
				SaveButton()
					.padding()
					.onTapGesture {
						self.presentationMode.wrappedValue.dismiss()
					}
			}
		}
		.padding()
	}
}

struct TransactionView_Previews: PreviewProvider {
	static var previews: some View {
		TransactionView()
	}
}
