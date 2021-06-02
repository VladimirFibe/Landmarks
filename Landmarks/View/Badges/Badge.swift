//
//  Badge.swift
//  Landmarks
//
//  Created by Vladimir Fibe on 02.06.2021.
//

import SwiftUI

struct Badge: View {
  static let rotationCount = 8
  var badgeSymbols: some View {
    ForEach(0 ..< Badge.rotationCount) { i in
      RotatedBadgeSymbol(angle: .degrees(Double(i) / Double(Badge.rotationCount)) * 360.0)
        .opacity(0.5)
    }
  }
  var body: some View {
    ZStack {
      BadgeBackground()
      GeometryReader { geometry in
        badgeSymbols
          .scaleEffect(0.25, anchor: .top)
          .position(x: 0.5 * geometry.size.width, y: 0.75 * geometry.size.height)
      }
    }
    .scaledToFit()
  }
}

struct Badge_Previews: PreviewProvider {
  static var previews: some View {
    Badge()
  }
}
