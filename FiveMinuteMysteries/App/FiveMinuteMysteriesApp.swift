//
//  FiveMinuteMysteriesApp.swift
//  FiveMinuteMysteries
//
//  Created by Joshua Basche on 6/7/21.
//

import SwiftUI

@main
struct FiveMinuteMysteriesApp: App {
    var body: some Scene {
        WindowGroup {
            EpisodeView().environmentObject(SourceOfTruth())
        }
    }
}
