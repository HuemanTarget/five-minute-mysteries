//
//  TransparentGroupBox.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/8/21.
//

import Foundation
import SwiftUI

struct TransparentGroupBox: GroupBoxStyle {
  func makeBody(configuration: Configuration) -> some View {
    configuration.content
      .frame(maxWidth: .infinity)
      .padding()
      .background(RoundedRectangle(cornerRadius: 8).fill(Color.white.opacity(0.5)))
      .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
  }
}
