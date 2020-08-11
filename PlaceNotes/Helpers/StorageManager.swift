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
    static func saveObject (_ place: Place) {
        // Сохранение в базу данных
        try! realm.write {
            realm .add(place)
        }
    }
    static func deleteObject(_ place: Place) {
         //Сохранение в базу данных
        try! realm.write {
            realm.delete(place)
        }
    }
}
