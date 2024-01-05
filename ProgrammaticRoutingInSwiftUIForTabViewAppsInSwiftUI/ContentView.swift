//
//  ContentView.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: AppScreen? = .backyard
    
    var body: some View {
        AppTabView(selection: $selection)
    }
}

#Preview {
    ContentView()
        .environment(Router())
}
