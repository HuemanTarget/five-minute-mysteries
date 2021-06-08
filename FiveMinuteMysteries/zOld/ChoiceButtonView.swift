//
//  ChoiceButtonView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct ChoiceButtonView: View {
  let test: Test
  
  var body: some View {
    Button(action: {
      
    }) {
      Text(test.choice[0])
        .padding()
        .foregroundColor(.black)
    }
    .frame(width: 200, height: 50, alignment: .leading)
    .background (
      RoundedRectangle(cornerRadius: 12)
        .stroke(Color.gray, lineWidth: 1)
    )

  }
}

struct ChoiceButtonView_Previews: PreviewProvider {
  static var previews: some View {
    ChoiceButtonView(test: tests[0])
  }
}
