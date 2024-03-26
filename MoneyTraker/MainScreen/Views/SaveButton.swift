//
//  SaveButton.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 25.03.2024.
//

import SwiftUI

struct SaveButton: View {
    var body: some View {
		ZStack {
			RoundedRectangle(cornerRadius: 14)
				.stroke(Color.black)
				.frame(width: 300,
					   height: 50,
					   alignment: .center)
				.foregroundColor(.white)
				.fontWeight(.bold)
				
			Text("Save")
				.font(.title2)
		}
	}
}

struct SaveButton_Previews: PreviewProvider {
    static var previews: some View {
        SaveButton()
    }
}
