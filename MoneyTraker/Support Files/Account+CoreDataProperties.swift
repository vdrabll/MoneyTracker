//
//  Account+CoreDataProperties.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//
//

import Foundation
import CoreData


extension Account {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Account> {
        return NSFetchRequest<Account>(entityName: "Account")
    }

    @NSManaged public var id: Int32
    @NSManaged public var transactions: NSSet?
	
	public var transactionArray: [Transaction] {
		var set = transactions as? Set<Transaction> ?? []
		return set.sorted { $0.amount < $1.amount}
	}

}

// MARK: Generated accessors for transactions
extension Account {

    @objc(addTransactionsObject:)
    @NSManaged public func addToTransactions(_ value: Transaction)

    @objc(removeTransactionsObject:)
    @NSManaged public func removeFromTransactions(_ value: Transaction)

    @objc(addTransactions:)
    @NSManaged public func addToTransactions(_ values: NSSet)

    @objc(removeTransactions:)
    @NSManaged public func removeFromTransactions(_ values: NSSet)

}

extension Account : Identifiable {

}
