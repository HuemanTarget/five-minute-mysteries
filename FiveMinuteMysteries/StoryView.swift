//
//  StoryView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryView: View {
  let test: Test
  @EnvironmentObject var truth: SourceOfTruth
  
  var body: some View {
    
    GroupBox {
      TabView {
        ForEach(test.body, id: \.self) { item in
          Text(item)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        
        //          QuestionsView(test: test)
        VStack(spacing: 30) {
          
          Button(action: {
            self.truth.nav = test.nav[0]
          }) {
            Text(test.choice[0])
              .padding()
              .frame(width: 200, height: 50, alignment: .leading)
              .foregroundColor(.black)
          }
          .background (
            RoundedRectangle(cornerRadius: 12)
              .stroke(Color.black, lineWidth: 1)
          )
          
          Button(action: {
            self.truth.nav = test.nav[1]
          }) {
            Text(test.choice[1])
              .padding()
              .frame(width: 200, height: 50, alignment: .leading)
              .foregroundColor(.black)
          }
          .background (
            RoundedRectangle(cornerRadius: 12)
              .stroke(Color.black, lineWidth: 1)
          )
          
          Button(action: {
            self.truth.nav = test.nav[2]
          }) {
            Text(test.choice[2])
              .padding()
              .frame(width: 200, height: 50, alignment: .leading)
              .foregroundColor(.black)
          }
          .background (
            RoundedRectangle(cornerRadius: 12)
              .stroke(Color.black, lineWidth: 1)
          )
          
          Button(action: {
            self.truth.nav = test.nav[3]
          }) {
            Text(test.choice[3])
              .padding()
              .frame(width: 200, height: 50, alignment: .leading)
              .foregroundColor(.black)
          }
          .background (
            RoundedRectangle(cornerRadius: 12)
              .stroke(Color.black, lineWidth: 1)
          )
          
        }
      }
    }
    .tabViewStyle(PageTabViewStyle())
    .frame(width: .infinity, height: 500)
  }
}


struct StoryView_Previews: PreviewProvider {
  static var previews: some View {
    StoryView(test: tests[0])
  }
}
