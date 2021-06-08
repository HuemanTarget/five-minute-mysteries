//
//  ContentView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryViewOne: View {
  let epOne = [EpOne]()
  @EnvironmentObject var truth: SourceOfTruth
  
  var body: some View {
    
    ZStack {
      LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6759886742, green: 0.9469802976, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .top, endPoint: .bottom)
      
      LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
      
      StoryOneBodyView(epOne: epOneChoices[truth.nav])
    }
    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    
  }
}

struct StoryViewOne_Previews: PreviewProvider {
  static var previews: some View {
    StoryViewOne().environmentObject(SourceOfTruth())
  }
}
