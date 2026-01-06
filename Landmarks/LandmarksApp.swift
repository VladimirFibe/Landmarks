import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    @State private var selection: Tab = .featured
    enum Tab {
        case featured
        case list
    }
    var body: some Scene {
        WindowGroup {
            
            TabView(selection: $selection) {
                CategoryHome()
                    .tabItem {
                        Label("Featured", systemImage: "star")
                    }
                    .tag(Tab.featured)
                    .environment(modelData)
                LandmarkList()
                    .tabItem {
                        Label("List", systemImage: "list.bullet")
                    }
                    .tag(Tab.list)
                    .environment(modelData)
            }
        }
    }
}
