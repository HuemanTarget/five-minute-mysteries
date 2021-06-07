//
//  ContentView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct ContentView: View {
  let test: Test
  
  var body: some View {
    ScrollView(.horizontal, content: {
      HStack {
        PageGridView()
      }
    })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(test: tests[0])
  }
}
