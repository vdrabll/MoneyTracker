//
//  Category+CoreDataProperties.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//
//

import Foundation
import CoreData


extension Category {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Category> {
        return NSFetchRequest<Category>(entityName: "Category")
    }

    @NSManaged public var name: String?

}

extension Category : Identifiable {

}
