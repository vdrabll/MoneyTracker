//
//  MainScren.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//

import SwiftUI

struct MainScren: View {
	@State var selectedDate: Date = Date()
	@State var tranasctions = 1...19 // транзакции сфетченные с базы данных за выбранную дату из дейтпикера
	var body: some View {
		VStack {
			DatePicker("Ваши траты", selection: $selectedDate,  displayedComponents: [.date])
				.datePickerStyle(.graphical)
			Text ("Expenses at \(Text(Date(), style: .date)) ")
				.bold()
			
			ScrollView {
				// тут список 
			}
			
		}
		
	}
}


struct MainScren_Previews: PreviewProvider {
	static var previews: some View {
		MainScren()
	}
}

