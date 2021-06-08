//
//  ContentView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct ContentView: View {
  let test = [Test]()
  @EnvironmentObject var truth: SourceOfTruth
  
  var body: some View {
    
    StoryView(test: tests[truth.nav])
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().environmentObject(SourceOfTruth())
  }
}
