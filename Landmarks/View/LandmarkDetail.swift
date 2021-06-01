//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Vladimir Fibe on 30.05.2021.
//

import SwiftUI

struct LandmarkDetail: View {
  let imageOffset: CGFloat = -130
  var landmark: Landmark
  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .ignoresSafeArea(edges: .top)
        .frame(height: 300)
      CircleImage(image: landmark.image)
        .offset(y: imageOffset)
        .padding(.bottom, imageOffset)
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
        Divider()
        Text("About \(landmark.name)").font(.title2)
        Text(landmarks[0].description)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
    
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        LandmarkDetail(landmark: landmarks[1])
      }
    }
}
