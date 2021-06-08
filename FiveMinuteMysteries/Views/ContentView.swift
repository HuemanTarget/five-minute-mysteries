//
//  ContentView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct ContentView: View {
  let epOne = [EpOne]()
  @EnvironmentObject var truth: SourceOfTruth
  
  var body: some View {
    
    StoryView(epOne: epOneChoices[truth.nav])
    
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().environmentObject(SourceOfTruth())
  }
}
