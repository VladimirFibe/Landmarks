//
//  ContentView.swift
//  Landmarks
//
//  Created by Vladimir Fibe on 28.05.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
        HStack {
          Text("Joshua Tree National Park")
          Spacer()
          Text("California")
        }
        .font(.subheadline)
      }
      .padding()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
