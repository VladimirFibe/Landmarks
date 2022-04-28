//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by MacService on 26.04.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
  @StateObject private var modelData = ModelData()
  let persistenceController = PersistenceController.shared
  
  var body: some Scene {
    WindowGroup {
      LandmarkList()
        .environmentObject(modelData)
      
      
      //            ContentView()
      //                .environment(\.managedObjectContext, persistenceController.container.viewContext)
    }
  }
}
