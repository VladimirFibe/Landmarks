//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by Vladimir Fibe on 02.06.2021.
//

import SwiftUI

struct BadgeSymbol: View {
    var body: some View {
      GeometryReader { geometry in
        Path { path in
          let width = min(geometry.size.height, geometry.size.width)
          let height = 0.75 * width
          let spacing = 0.03 * width
          let middle = 0.5 * width
          let topWidth = 0.226 * width
          let topHeight = 0.488 * height
          
          path.addLines([
          CGPoint(x: middle, y: spacing),
            CGPoint(x: middle - topWidth, y: topHeight - spacing),
            CGPoint(x: middle, y: 0.5 * topHeight + spacing),
            CGPoint(x: middle + topWidth, y: topHeight - spacing),
            CGPoint(x: middle, y: spacing)
          ])
          
          path.move(to: CGPoint(x: middle, y: 0.5 * topHeight + spacing * 3))
          
          path.addLines([
          CGPoint(x: middle - topWidth, y: topHeight + spacing),
            CGPoint(x: spacing, y: height - spacing),
            CGPoint(x: width - spacing, y: height - spacing),
            CGPoint(x: middle + topWidth, y: topHeight + spacing),
            CGPoint(x: middle, y: 0.5 * topHeight + spacing * 3)
          ])
        }
        .fill(Self.symbolColor)
      }
    }
  static let symbolColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255)
}

struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
