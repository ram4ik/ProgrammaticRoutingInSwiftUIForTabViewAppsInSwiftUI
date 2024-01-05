//
//  AppScreen.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

import Foundation
import SwiftUI

enum AppScreen: Hashable, Identifiable, CaseIterable {
    case backyard
    case birds
    case plants
    
    var id: AppScreen { self }
}

extension AppScreen {
    
    @ViewBuilder
    var label: some View {
        switch self {
            case .backyard:
                Label("Backyards", systemImage: "tree")
            case .birds:
                Label("Birds", systemImage: "bird")
            case .plants:
                Label("Plants", systemImage: "leaf")
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .backyard:
            BackyardNavigationStack()
        case .birds:
            BirdsNavigationStack()
        case .plants:
            Text("Plants")
        }
    }
}
