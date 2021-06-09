//
//  EpOneResultsModel.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/9/21.
//

import Foundation

struct EpOneResults: Codable, Identifiable, Hashable {
  let id: String
  let body: String
  let choice: String
  let nav: Int
}
