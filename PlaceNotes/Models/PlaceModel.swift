//
//  PlaceModel.swift
//  PlaceNotes
//
//  Created by Felix Falkovsky on 11.08.2019.
//  Copyright © 2019 Felix Falkovsky. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    @objc dynamic var rating = 0.0
    @objc dynamic var date = Date()
    
//     let restaurantNames = ["Burger Herous", "Kitchen", "Shwitch", "Bonsai", "Haus", "Мистер и Мисис", "Шок"] - временный массив
    
        // метод загрузки в базу данных realm
//    func savePlaces() {
//
//        let image = UIImage(named: "images")
//        guard let imageData = image?.pngData() else { return }
//
//        for place in restaurantNames {
//            let newPlace = Place()
//            newPlace.name = place
//            newPlace.location = "Berlin"
//            newPlace.type = "Restoran"
//            newPlace.imageData = imageData
//
//            StorageManager.saveObject(newPlace)
//        }
//    }
    
    convenience init (name: String, location: String?, type: String?,rating: Double, imageData: Data?) {
        self.init()
        self.name = name
        self.location = location
        self.type = type
        self.rating = rating
        self.imageData = imageData
    }
}
