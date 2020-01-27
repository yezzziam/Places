//
//  StorageManager.swift
//  Places
//
//  Created by Yegor Zubarets on 1/27/20.
//  Copyright © 2020 Yegor Zubarets. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
