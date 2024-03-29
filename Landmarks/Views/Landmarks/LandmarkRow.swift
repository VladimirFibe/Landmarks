//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by MacService on 26.04.2022.
//

import SwiftUI

struct LandmarkRow: View {
  let landmark: Landmark
  var body: some View {
    HStack {
      landmark.image
        .resizable()
        .frame(width: 50, height: 50)
      Text(landmark.name)
      Spacer()
      if landmark.isFavorite {
        Image(systemName: "star.fill")
          .foregroundColor(.yellow)
      }
    }
  }
}

struct LandmarkRow_Previews: PreviewProvider {
  static var landmarks = ModelData().landmarks
  static var previews: some View {
    Group {
      LandmarkRow(landmark: landmarks[0])
      LandmarkRow(landmark: landmarks[1])
    }
    .padding()
    .previewLayout(.fixed(width: 300.0, height: 70.0))
  }
}
