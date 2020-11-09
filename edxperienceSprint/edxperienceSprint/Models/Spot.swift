//
//  Spot.swift
//  edxperienceSprint
//
//  Created by Zachary Thacker on 11/9/20.
//

import Foundation
import MapKit

struct Spot: Decodable {
    var image: URL
    var video: URL
    var name: String
    var latitude: Double
    var longetude: Double
}


