//
//  Transaction+CoreDataProperties.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//
//

import Foundation
import CoreData


extension Transaction {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Transaction> {
        return NSFetchRequest<Transaction>(entityName: "Transaction")
    }

    @NSManaged public var amount: Double
    @NSManaged public var category: Category?
    @NSManaged public var date: Date?
    @NSManaged public var desc: String?
    @NSManaged public var spender: String?
    @NSManaged public var id: Transaction?

}

extension Transaction : Identifiable {

}
