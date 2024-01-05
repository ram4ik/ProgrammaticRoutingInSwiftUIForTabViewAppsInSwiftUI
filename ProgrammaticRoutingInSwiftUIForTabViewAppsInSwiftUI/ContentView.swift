//
//  ContentView.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

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
            Text("Backyards")
        case .birds:
            Text("Birds")
        case .plants:
            Text("Plants")
        }
    }
}

struct AppTabView: View {
    @Binding var selection: AppScreen
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(AppScreen.allCases) { screen in
                screen.destination
                    .tag(screen as AppScreen?)
                    .tabItem { screen.label }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        AppTabView(selection: .constant(.backyard))
    }
}

#Preview {
    ContentView()
}
