//
//  Constant.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

let tests: [Test] = Bundle.main.decode("fmmtest.json")
let epOneChoices: [EpOne] = Bundle.main.decode("fmmepOne.json")
let epOneResults: [EpOneResults] = Bundle.main.decode("fmmepOneResults.json")

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
  return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 1)
}
