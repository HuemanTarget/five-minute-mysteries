//
//  StoryResultsBodyView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/9/21.
//

import SwiftUI

struct StoryResultsBodyView: View {
  let epOne: EpOne
  @EnvironmentObject var truth: SourceOfTruth
  @State private var isPresented = false
  
  var body: some View {
    ZStack {
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
              .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
              .background (
                RoundedRectangle(cornerRadius: 12)
                  .stroke(Color.black, lineWidth: 1)
              )
            Button(action: {
              self.truth.nav = epOne.nav[1]
              isPresented.toggle()
            }) {
              Text(epOne.choice[1])
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.black)
            }
            .hidden()
            .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
//            .background (
//              RoundedRectangle(cornerRadius: 12)
//                .stroke(Color.black, lineWidth: 1)
//            )
            
            Button(action: {
              self.truth.nav = epOne.nav[2]
              isPresented.toggle()
            }) {
              Text(epOne.choice[2])
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.black)
            }
            .hidden()
            .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
//            .background (
//              RoundedRectangle(cornerRadius: 12)
//                .stroke(Color.black, lineWidth: 1)
//            )
            
            Button(action: {
              self.truth.nav = epOne.nav[3]
              isPresented.toggle()
            }) {
              Text(epOne.choice[3])
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.black)
            }
            .hidden()
            .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
//            .background (
//              RoundedRectangle(cornerRadius: 12)
//                .stroke(Color.black, lineWidth: 1)
//            )
          }
          .tabViewStyle(PageTabViewStyle())
          .frame(height: 500)
        }
      }
      .groupBoxStyle(TransparentGroupBox())
    }
  }
}

struct StoryResultsBodyView_Previews: PreviewProvider {
  static var previews: some View {
    StoryResultsBodyView(epOne: epOneChoices[0])
  }
}
