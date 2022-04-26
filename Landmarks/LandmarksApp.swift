//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by MacService on 26.04.2022.
//

import SwiftUI

@main
struct LandmarksApp: App {
  let persistenceController = PersistenceController.shared
  
  var body: some Scene {
    WindowGroup {
      LandmarkList()
      //            ContentView()
      //                .environment(\.managedObjectContext, persistenceController.container.viewContext)
    }
  }
}
