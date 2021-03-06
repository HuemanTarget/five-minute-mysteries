//
//  StoryTwoBodyView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryTwoBodyView: View {
  let epOne: EpOne
  @EnvironmentObject var truth: SourceOfTruth
  @State private var isPresentedTwo = false

  
  var body: some View {
    ZStack {
      VStack {
        Text("Page Two")
        GroupBox {
          TabView {
            ForEach(epOne.body, id: \.self) { item in
              Text(item)
                .font(.title)
            }
            VStack(spacing: 30) {
              Button(action: {
                self.truth.nav = epOne.nav[0]
                isPresentedTwo.toggle()
//                presentationMode.wrappedValue.dismiss()
              }) {
                Text(epOne.choice[0])
                  .padding()
                  .frame(width: 200, height: 50, alignment: .leading)
                  .foregroundColor(.black)
              }
              .fullScreenCover(isPresented: $isPresentedTwo, content: StoryViewThree.init)
              .background (
                RoundedRectangle(cornerRadius: 12)
                  .stroke(Color.black, lineWidth: 1)
              )
              
              Button(action: {
                self.truth.nav = epOne.nav[1]
//                presentationMode.wrappedValue.dismiss()
                isPresentedTwo.toggle()
              }) {
                Text(epOne.choice[0])
                  .padding()
                  .frame(width: 200, height: 50, alignment: .leading)
                  .foregroundColor(.black)
              }
              .fullScreenCover(isPresented: $isPresentedTwo, content: StoryViewThree.init)
              .background (
                RoundedRectangle(cornerRadius: 12)
                  .stroke(Color.black, lineWidth: 1)
              )
              
              Button(action: {
                self.truth.nav = epOne.nav[2]
//                presentationMode.wrappedValue.dismiss()
                isPresentedTwo.toggle()
              }) {
                Text(epOne.choice[2])
                  .padding()
                  .frame(width: 200, height: 50, alignment: .leading)
                  .foregroundColor(.black)
              }
              .fullScreenCover(isPresented: $isPresentedTwo, content: StoryViewThree.init)
              .background (
                RoundedRectangle(cornerRadius: 12)
                  .stroke(Color.black, lineWidth: 1)
              )
              
              Button(action: {
                self.truth.nav = epOne.nav[3]
//                presentationMode.wrappedValue.dismiss()
                isPresentedTwo.toggle()
              }) {
                Text(epOne.choice[3])
                  .padding()
                  .frame(width: 200, height: 50, alignment: .leading)
                  .foregroundColor(.black)
              }
              .fullScreenCover(isPresented: $isPresentedTwo, content: StoryViewThree.init)
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

struct StoryTwoBodyView_Previews: PreviewProvider {
  static var previews: some View {
    StoryTwoBodyView(epOne: epOneChoices[0])
  }
}
