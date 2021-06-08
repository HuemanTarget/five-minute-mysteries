//
//  StoryViewThree.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryViewThree: View {
  let epOne = [EpOne]()
  @EnvironmentObject var truth: SourceOfTruth
  
  var body: some View {
    StoryTwoBodyView(epOne: epOneChoices[truth.nav])
  }
}

struct StoryViewThree_Previews: PreviewProvider {
  static var previews: some View {
    StoryViewThree().environmentObject(SourceOfTruth())
  }
}
