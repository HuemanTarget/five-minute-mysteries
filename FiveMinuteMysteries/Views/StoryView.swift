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
  @State private var isPresented = false
  
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      GroupBox {
        TabView {
          ForEach(test.body, id: \.self) { item in
            Text(item)
              .font(.title)
          }
          VStack(spacing: 30) {
            Button(action: {
              self.truth.nav = test.nav[0]
              isPresented.toggle()
            }) {
              Text(test.choice[0])
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.black)
            }
            .fullScreenCover(isPresented: $isPresented, content: StoryViewTwo.init)
            .background (
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.black, lineWidth: 1)
            )
            
            Button(action: {
              self.truth.nav = test.nav[1]
              isPresented.toggle()
            }) {
              Text(test.choice[1])
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.black)
            }
            .fullScreenCover(isPresented: $isPresented, content: StoryViewTwo.init)
            .background (
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.black, lineWidth: 1)
            )
            
            Button(action: {
              self.truth.nav = test.nav[2]
              isPresented.toggle()
            }) {
              Text(test.choice[2])
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.black)
            }
            .fullScreenCover(isPresented: $isPresented, content: StoryViewTwo.init)
            .background (
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.black, lineWidth: 1)
            )
            
            Button(action: {
              self.truth.nav = test.nav[3]
              isPresented.toggle()
            }) {
              Text(test.choice[3])
                .padding()
                .frame(width: 200, height: 50, alignment: .leading)
                .foregroundColor(.black)
            }
            .fullScreenCover(isPresented: $isPresented, content: StoryViewTwo.init)
            .background (
              RoundedRectangle(cornerRadius: 12)
                .stroke(Color.black, lineWidth: 1)
            )
            
          }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 500)
      }
    }
  }
  
}


struct StoryView_Previews: PreviewProvider {
  static var previews: some View {
    StoryView(test: tests[0])
  }
}

