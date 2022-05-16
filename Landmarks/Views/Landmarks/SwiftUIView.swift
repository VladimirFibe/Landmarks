//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by MacService on 14.05.2022.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
      VStack {
        HStack {
          VStack(spacing: 60.0) {
            Text("My App").font(.title).fontWeight(.bold).foregroundColor(Color.red)
            Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
              /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .buttonStyle(.borderedProminent)
          }
          Spacer().padding()
        }
        .padding(.horizontal, 50)
        Spacer()
      }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
