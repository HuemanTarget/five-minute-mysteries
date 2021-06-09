//
//  StoryFourBodyView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryFiveBodyView: View {
  let epOne: EpOne
  @EnvironmentObject var truth: SourceOfTruth
  @State private var isPresented = false
  
  var body: some View {
    ZStack {
      VStack {
        Text("Page Five")
        GroupBox {
          TabView {
            ForEach(epOne.body, id: \.self) { item in
              Text(item)
                .font(.title)
            }
            VStack(spacing: 30) {
              Button(action: {
                self.truth.nav = epOne.nav[0]
                isPresented.toggle()
              }) {
                Text(epOne.choice[0])
                  .padding()
                  .frame(width: 200, height: 50, alignment: .leading)
                  .foregroundColor(.black)
              }
              .fullScreenCover(isPresented: $isPresented, content: StoryResultsView.init)
              .background (
                RoundedRectangle(cornerRadius: 12)
                  .stroke(Color.black, lineWidth: 1)
              )
              
              
            }
          }
          .tabViewStyle(PageTabViewStyle())
          .frame(height: 500)
        }
        .groupBoxStyle(TransparentGroupBox())
      }
    }
  }
}

struct StoryFiveBodyView_Previews: PreviewProvider {
  static var previews: some View {
    StoryFiveBodyView(epOne: epOneChoices[0])
  }
}
