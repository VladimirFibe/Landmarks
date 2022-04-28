//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by MacService on 26.04.2022.
//

import SwiftUI

struct LandmarkDetailView: View {
  @EnvironmentObject var modelData: ModelData
  let landmark: Landmark
  var landmarkIndex: Int {
    modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
  }
  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130)
      VStack(alignment: .leading) {
        HStack {
          Text(landmark.name)
            .font(.title)
          FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
        }
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
        Divider()
        Text("About \(landmark.name)")
          .font(.title2)
        Text(landmark.description)
      }
      .padding()
      Spacer()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetailView_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkDetailView(landmark: landmarks[0])
      .environmentObject(ModelData())
  }
}
