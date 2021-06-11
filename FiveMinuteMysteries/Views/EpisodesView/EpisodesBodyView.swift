//
//  EpisodesView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/8/21.
//

import SwiftUI

struct EpisodesBodyView: View {
  @State private var isPresented = false
  
  var body: some View {
    ZStack {
      Color.white.opacity(0.5)
        .frame(width: 325, height: 600)
        .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
        .blur(radius: 1)
      VStack {
        Spacer()
        
        Text("Five Minute\nMysteries Episodes")
          .bold()
          .multilineTextAlignment(.center)
          .font(.title2)
          .padding(.bottom, 50)
        
        Button(action: {
          isPresented.toggle()
          
        }) {
          VStack {
            Text("Episode One")
              .font(.footnote)
            Text("The LaLaurie Murders")
              .bold()
          }
          .padding()
          .frame(width: 250, height: 50, alignment: .center)
          .foregroundColor(.white)
        }
        .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.black, lineWidth: 1)
            .background(Color.blue).cornerRadius(12)
        )
        .padding(.bottom)
        
        Button(action: {
          isPresented.toggle()
        }) {
          VStack {
            Text("Episode Two")
              .font(.footnote)
            Text("TBD Coming Sooon")
              .bold()
          }
          .padding()
          .frame(width: 250, height: 50, alignment: .center)
          .foregroundColor(.black)
        }
        .disabled(true)
        .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.bottom)
        
        Button(action: {
          isPresented.toggle()
        }) {
          VStack {
            Text("Episode Three")
              .font(.footnote)
            Text("TBD Coming Sooon")
              .bold()
          }
          .padding()
          .frame(width: 250, height: 50, alignment: .center)
          .foregroundColor(.black)
        }
        .disabled(true)
        .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.bottom)
        
        Button(action: {
          isPresented.toggle()
        }) {
          VStack {
            Text("Episode Four")
              .font(.footnote)
            Text("TBD Coming Sooon")
              .bold()
          }
          .padding()
          .frame(width: 250, height: 50, alignment: .center)
          .foregroundColor(.black)
        }
        .disabled(true)
        .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.bottom)
        
        Button(action: {
          isPresented.toggle()
        }) {
          VStack {
            Text("Episode Five")
              .font(.footnote)
            Text("TBD Coming Sooon")
              .bold()
          }
          .padding()
          .frame(width: 250, height: 50, alignment: .center)
          .foregroundColor(.black)
        }
        .disabled(true)
        .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.bottom)
        
        Button(action: {
          isPresented.toggle()
        }) {
          VStack {
            Text("Episode Six")
              .font(.footnote)
            Text("TBD Coming Sooon")
              .bold()
          }
          .padding()
          .frame(width: 250, height: 50, alignment: .center)
          .foregroundColor(.black)
        }
        .disabled(true)
        .fullScreenCover(isPresented: $isPresented, content: StoryViewOne.init)
        .background (
          RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.bottom)
        
        Spacer()
      }
    }
  }
}

struct EpisodesView_Previews: PreviewProvider {
  static var previews: some View {
    EpisodesBodyView()
  }
}
