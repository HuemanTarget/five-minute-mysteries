//
//  StoryView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct StoryView: View {
  let test: Test
  
  var body: some View {
    GroupBox {
      TabView {
        ForEach(test.body, id: \.self) { item in
          Text(item)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
        VStack {
          ForEach(test.choice, id: \.self) { test in
            Button(action: {
            
            }) {
              Text(test)
                .padding()
                .foregroundColor(.black)
            }
            .frame(width: 200, height: 50, alignment: .leading)
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
}

struct StoryView_Previews: PreviewProvider {
  static var previews: some View {
    StoryView(test: tests[0])
  }
}
