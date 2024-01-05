//
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUIApp.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

import SwiftUI

@main
struct ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUIApp: App {
    
    @State private var router = Router()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(router)
        }
    }
}
