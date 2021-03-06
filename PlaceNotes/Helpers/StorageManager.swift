//
//  StorageManager.swift
//  PlaceNotes
//
//  Created by Felix Falkovsky on 11.08.2019.
//  Copyright © 2019 Felix Falkovsky. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    // Сохранение в базу данных
    static func saveObject (_ place: Place) {
        try! realm.write {
            realm .add(place)
        }
    }
    
    //Удаление из базы данных
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}
