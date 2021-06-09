//
//  StoryResultsBodyView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/9/21.
//

import SwiftUI

struct StoryResultsBodyView: View {
  let epOneResults: EpOneResults
  @EnvironmentObject var truth: SourceOfTruth
  @State private var isPresented = false
  
  var body: some View {
    ZStack {
      GroupBox {
        VStack(spacing: 20) {
          Text(epOneResults.body)

            Button(action: {
              self.truth.nav = epOneResults.nav
              isPresented.toggle()
            }) {
              Text(epOneResults.choice)
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.black)
            }
            .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
            .background (
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.black, lineWidth: 1)
            )
        }
        .frame(height: 500)
      }
      .groupBoxStyle(TransparentGroupBox())
    }
  }
}

struct StoryResultsBodyView_Previews: PreviewProvider {
  static var previews: some View {
    StoryResultsBodyView(epOneResults: epOneResults[0])
  }
}
