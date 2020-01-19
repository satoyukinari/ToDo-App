//
//  Nameitem.swift
//  ToDo-CoreDate
//
//  Created by 佐藤志誠 on 2020/01/18.
//  Copyright © 2020 Sato Yukinari. All rights reserved.
//

import Foundation
import CoreData


class NameItem: NSManagedObject, Identifiable {
    
    @NSManaged public var title: String?
    @NSManaged public var createdAt: Date?
    @NSManaged public var id: String?
    
    
    func fetch() -> NSFetchRequest<NameItem> {
        let request: NSFetchRequest<NameItem> = NameItem.fetchRequest() as!NSFetchRequest<NameItem>
        request.sortDescriptors = [NSSortDescriptor(key: "createdAt", ascending: false)]
        
        return request
    }
}

