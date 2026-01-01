import SwiftUI
import MapKit

struct MapView: View {
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: .init(latitude: 34.011286, longitude: -116.166868),
            span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    var body: some View {
        Map(initialPosition: .region(region))
    }
}

#Preview {
    MapView()
}
