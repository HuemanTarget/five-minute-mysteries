//
//  StoryViewTwo.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryViewTwo: View {
  let test = [Test]()
  @EnvironmentObject var truth: SourceOfTruth
  
  var body: some View {
    StoryTwoBodyView(test: tests[truth.nav])
    //    Text("Hello World")
  }
}

struct StoryViewTwo_Previews: PreviewProvider {
  static var previews: some View {
    StoryViewTwo().environmentObject(SourceOfTruth())
  }
}
