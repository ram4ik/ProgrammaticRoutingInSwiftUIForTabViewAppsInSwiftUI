//
//  AppTabView.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

import Foundation
import SwiftUI

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
