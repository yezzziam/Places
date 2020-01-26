//
//  PlaceModel.swift
//  Places
//
//  Created by Yegor Zubarets on 1/26/20.
//  Copyright © 2020 Yegor Zubarets. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let listOfNamesForPlaces = ["Samila The Kitchen", "Zalmaniko", "Gemma", "Casino San Remo"]
    
    static func getPlaces() -> [Place] {
        var places = [Place]()
        
        for place in listOfNamesForPlaces {
            places.append(Place(name: place, location: "Tel Aviv", type: "Cafe", image: place))
        }
        
        return places
    }
}
