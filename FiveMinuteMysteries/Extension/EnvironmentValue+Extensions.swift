//
//  EnvironmentValue+Extensions.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/10/21.
//

import Foundation
import SwiftUI

struct ShowingSheetKey: EnvironmentKey {
    static let defaultValue: Binding<Bool>? = nil
}

extension EnvironmentValues {
    var showingSheet: Binding<Bool>? {
        get { self[ShowingSheetKey.self] }
        set { self[ShowingSheetKey.self] = newValue }
    }
}
