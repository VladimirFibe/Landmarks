//
//  Landmark.swift
//  Landmarks
//
//  Created by Vladimir Fibe on 30.05.2021.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  var isFavorite: Bool
  private var imageName: String
  var image: Image {
    Image(imageName)
  }
  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
  private var coordinates: Coordinates
  var locationCoordinate: CLLocationCoordinate2D {
    CLLocationCoordinate2D(latitude: coordinates.latitude,
                           longitude: coordinates.longitude)
  }
}
