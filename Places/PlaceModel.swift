//
//  PlaceModel.swift
//  Places
//
//  Created by Yegor Zubarets on 1/26/20.
//  Copyright © 2020 Yegor Zubarets. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let listOfNamesForPlaces = ["Samila The Kitchen", "Zalmaniko", "Gemma", "Casino San Remo"]
    
    func savePlaces() {
                
        for place in listOfNamesForPlaces {
            
            let image = UIImage(named: place)
            
            guard let imageData = image?.pngData() else { return }
         
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Tel Aviv"
            newPlace.type = "Cafe"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
        }
    }
}
