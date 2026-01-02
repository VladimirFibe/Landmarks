import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: .init(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
    var body: some View {
        Map(initialPosition: .region(region))
    }
}

#Preview {
    MapView(coordinate: landmarks[1].locationCoordinate)
}
