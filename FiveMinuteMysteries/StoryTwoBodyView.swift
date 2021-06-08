//
//  StoryTwoBodyView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryTwoBodyView: View {
  let test: Test
  @EnvironmentObject var truth: SourceOfTruth
//  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//  @State private var action: Int? = 0
//  @State private var willMoveToNextScreen = false
  @State private var isPresented = false
  
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      GroupBox {
        TabView {
          ForEach(test.body, id: \.self) { item in
            Text(item)
              .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
          }
          
          //          QuestionsView(test: test)
          VStack(spacing: 30) {
  //          NavigationLink(destination: StoryViewTwo(), tag: 1, selection: $action) {
  //            Text(test.choice[0])
  //              .padding()
  //              .frame(width: 200, height: 50, alignment: .leading)
  //              .foregroundColor(.black)
  //              .onTapGesture {
  //                self.truth.nav = test.nav[0]
  //                self.action = 1
  //              }
  //              .background (
  //                RoundedRectangle(cornerRadius: 12)
  //                  .stroke(Color.black, lineWidth: 1)
  //              )
  //
  //          }
            
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
            //            Text(test.choice[0])
            //              .padding()
            //              .frame(width: 200, height: 50, alignment: .leading)
            //              .foregroundColor(.black)
            //              .onTapGesture {
            //                self.truth.nav = test.nav[0]
            //                self.action = 1
            //              }
            //              .background (
            //                RoundedRectangle(cornerRadius: 12)
            //                  .stroke(Color.black, lineWidth: 1)
            //              )
            
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
//    .navigate(to: StoryViewTwo(), when: $willMoveToNextScreen)
  }
}

struct StoryTwoBodyView_Previews: PreviewProvider {
  static var previews: some View {
    StoryTwoBodyView(test: tests[0])
  }
}
