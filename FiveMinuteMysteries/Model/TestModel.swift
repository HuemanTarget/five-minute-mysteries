//
//  TestModel.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import Foundation

struct Test: Codable, Identifiable {
  let id: String
  let body: [String]
  let choice: [String]
  let nav: [String]
}
