//
//  CoreDataProvider.swift
//  MoneyTraker
//
//  Created by Виктория Федосова on 24.03.2024.
//

import Foundation
import CoreData

struct CoreDataController {
	
	static var sheared = CoreDataController()
	var container: NSPersistentContainer
	
	static var preview: CoreDataController = {
		let controller = CoreDataController(inMemory: true)
				let viewContext = controller.container.viewContext
		
				
		for item in 0...5 {
				let transaction = Account()
					transaction.id = Int32(item)
				
				}
		do {
					try viewContext.save()
				} catch {
					print(String(describing: error.localizedDescription))
				}
				return controller
	}()
	
	
	func save() {
		let context = container.viewContext

		if context.hasChanges {
			do {
				try context.save()
			} catch {
				context.rollback()
				print(String(describing: error.localizedDescription))
			}
		}
	}
	
	init(inMemory: Bool = false) {
			container = NSPersistentContainer(name: "TranactionDataModel")
			
			if inMemory {
				container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
			}
			
			container.loadPersistentStores { (storeDescription, error) in
				if let error = error {
					print(String(describing: storeDescription))
					print(String(describing: error))
				}
			}
		}
	
	func saveContext() {
			let context = container.viewContext

			if context.hasChanges {
				do {
					try context.save()
				} catch {
					context.rollback()
					print(String(describing: error.localizedDescription))
				}
			}
		}
}
