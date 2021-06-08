//
//  EpisodesView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/8/21.
//

import SwiftUI

struct EpisodeView: View {
  var body: some View {
    ZStack {
      LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.6759886742, green: 0.9469802976, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1))]), startPoint: .top, endPoint: .bottom)
      
      LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)).opacity(0.6), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.3)]), startPoint: .topLeading, endPoint: .bottomTrailing)
      
      ZStack {
        Circle()
          .frame(width: 400, height: 400)
          .offset(x: 150, y: -200)
          .foregroundColor(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.4))
          .blur(radius: 8)
        
        Circle()
          .frame(width: 300, height: 300)
          .offset(x: -100, y: 225)
          .foregroundColor(Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)).opacity(0.3))
          .blur(radius: 8)
        
        EpisodesBodyView()
      }
    }
    .edgesIgnoringSafeArea(.all)
  }
}

struct EpisodeView_Previews: PreviewProvider {
  static var previews: some View {
    EpisodeView()
  }
}
