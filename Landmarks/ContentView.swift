import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree Nateional Park")
                Spacer()
                Text("California")
            }
            .font(.subheadline)
        }
    }
}

#Preview {
    ContentView()
}
