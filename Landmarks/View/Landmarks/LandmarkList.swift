//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Vladimir Fibe on 30.05.2021.
//

import SwiftUI

struct LandmarkList: View {
  @EnvironmentObject var modelData: ModelData
  @State private var showFavoritesOnly = false
  var filteredLandmarks: [Landmark] {
    modelData.landmarks.filter { $0.isFavorite || !showFavoritesOnly }
  }
  var body: some View {
    NavigationView {
      List {
        Toggle(isOn: $showFavoritesOnly) {
          Text("Favorities only")
        }
        ForEach(filteredLandmarks) {landmark in
          NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
            LandmarkRow(landmark: landmark)
          }
        }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    LandmarkList()
      .environmentObject(ModelData())
  }
  
}
