//
//  MainScren.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//

import SwiftUI

struct MainScren: View {
	@State var selectedDate: Date = Date()
	@State private var path = NavigationPath()
	// транзакции сфетченные с базы данных за выбранную дату из дейтпикера
	var body: some View {
		NavigationStack(path: $path) {
			VStack {
				HStack {
					Text ("Expenses at \(Text(selectedDate, style: .date)) ")
						.font(.title3)
						.multilineTextAlignment(.center)
						.bold()
					Spacer()
					NavigationLink( "  +       ", destination: TransactionView())
						.font(.title)
				}
				.padding()
				.frame(alignment: .center)
				
				DatePicker(" ", selection: $selectedDate,  displayedComponents: [.date])
					.datePickerStyle(.graphical)
					}
				
				ScrollView {
					
					TransactionRow(amound: 12, name: "rice roll", cathegory: "Cafe")
				}
			}
		}
	}

struct MainScren_Previews: PreviewProvider {
	static var previews: some View {
		MainScren()
	}
}

