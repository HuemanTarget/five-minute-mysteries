//
//  EpOneModel.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/8/21.
//

import Foundation

struct EpOne: Codable, Identifiable, Hashable {
  let id: String
  let body: [String]
  let choice: [String]
  let nav: [Int]
}
