//
//  PageGridView.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

struct PageGridView: View {
  var body: some View {
    ScrollView(.horizontal) {
      HStack {
        ForEach(tests) { test in
          StoryView(test: test)
        }
        .padding()
        QuestionsView(test: tests[0])
          .padding(.leading, 50)
          .padding(.trailing, 100)
      }
      .frame(width: 2000)
    }
  }
}

struct PageGridView_Previews: PreviewProvider {
  static var previews: some View {
    PageGridView()
  }
}
