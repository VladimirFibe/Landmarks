import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(angle: .degrees(Double(index) / 8.0) * 360.0)
        }
        .opacity(0.5)
    }
    var body: some View {
        ZStack {
            BadgeBackground()
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(0.25, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: 0.75 * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

#Preview {
    Badge()
}
