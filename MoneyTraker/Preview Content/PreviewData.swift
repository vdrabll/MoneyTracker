//
//  PreviewData.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 25.02.2024.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "25.02.24", institution: "Sberbank", account: "Card", merchant: "??", amount: 300, type: TransactionType.debit.rawValue, categoryId: 1, category: "Food", isPending: false, isTransfer: true, isExpense: true, isEdited: false)

var transactionPreviewListData = [Transaction](repeating: transactionPreviewData, count: 10 )
 
