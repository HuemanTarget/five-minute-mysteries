//
//  QuestionsView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct QuestionsView: View {
  let test: Test
  
  var body: some View {
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
}

struct QuestionsView_Previews: PreviewProvider {
  static var previews: some View {
    QuestionsView(test: tests[0])
  }
}
