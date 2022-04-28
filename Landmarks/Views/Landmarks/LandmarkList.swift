//
//  LandmarkList.swift
//  Landmarks
//
//  Created by MacService on 26.04.2022.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavoritesOnly = false
  var filteredLandmarks: [Landmark] {
    modelData.landmarks.filter { !showFavoritesOnly || $0.isFavorite }
  }
  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorites only")
        }
        ForEach(filteredLandmarks) { landmark in
          NavigationLink {
            LandmarkDetailView(landmark: landmark)
          } label: {
            LandmarkRow(landmark: landmark)
          }

        }
      }
    }
    .navigationTitle("Landmarks")
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
      .environmentObject(ModelData())
  }
}
