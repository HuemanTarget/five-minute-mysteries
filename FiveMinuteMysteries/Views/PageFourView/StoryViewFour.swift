//
//  StoryViewFour.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryViewFour: View {
  let epOne = [EpOne]()
  @EnvironmentObject var truth: SourceOfTruth
  
  var body: some View {
    StoryTwoBodyView(epOne: epOneChoices[truth.nav])
  }
}

struct StoryViewFour_Previews: PreviewProvider {
  static var previews: some View {
    StoryViewFour().environmentObject(SourceOfTruth())
  }
}
