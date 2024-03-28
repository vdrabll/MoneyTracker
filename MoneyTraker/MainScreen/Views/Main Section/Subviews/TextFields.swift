//
//  TextFields.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 25.03.2024.
//

import SwiftUI

struct TextFields: View {
	@State private var amound: String = ""
	@State private var date: String = ""
	@State private var description: String = ""
	@State private var cathegory: String = ""
	@State private var spender: String = ""
	var body: some View {
		VStack(alignment: .leading) {
			Text("Amound")
			TextField("add amound", text: $amound)
			Text("Date")
			TextField("select date", text: $date)
			Text("Description")
			TextField("add Description", text: $description)
			Text("Cathegory")
			TextField("choose cathegory", text: $cathegory)
			Text("Spender")
			TextField("add where you spand",text: $spender)
		}
		.padding(.leading, 10.0)
		.font(.title2)
	}
}

struct TextFields_Previews: PreviewProvider {
    static var previews: some View {
        TextFields()
    }
}
