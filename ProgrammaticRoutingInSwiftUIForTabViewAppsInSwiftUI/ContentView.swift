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
            BackyardNavigationStack()
        case .birds:
            BirdsNavigationStack()
        case .plants:
            Text("Plants")
        }
    }
}

enum BirdRoute: Hashable {
    case home
    case detail(String)
}

struct BirdDetailScreen: View {
    let name: String
    
    var body: some View {
        Text(name)
    }
}

struct BirdsNavigationStack: View {
    @State private var routes: [BirdRoute] = []
    
    var body: some View {
        NavigationStack(path: $routes) {
            Button("Go to bird detail") {
                routes.append(.detail("Sparrow"))
            }.navigationDestination(for: BirdRoute.self) { route in
                switch route {
                case .home:
                    Text("Home")
                case .detail(let name):
                    BirdDetailScreen(name: name)
                }
            }
        }
    }
}

struct BackyardNavigationStack: View {
    var body: some View {
        NavigationStack {
            List(1...10, id: \.self) { index in
                NavigationLink {
                    Text("Backyard Detail")
                } label: {
                    Text("Backyard \(index)")
                }
            }.navigationTitle("Backyards")
        }
    }
}

struct AppTabView: View {
    @Binding var selection: AppScreen?
    
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
    @State private var selection: AppScreen? = .backyard
    
    var body: some View {
        AppTabView(selection: $selection)
    }
}

#Preview {
    ContentView()
}
