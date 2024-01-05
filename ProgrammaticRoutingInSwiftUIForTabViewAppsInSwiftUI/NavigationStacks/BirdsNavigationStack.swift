//
//  BirdsNavigationStack.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

import Foundation
import SwiftUI

struct BirdsNavigationStack: View {
    
    @Environment(Router.self) private var router
    
    var body: some View {
        
        @Bindable var router = router
        
        NavigationStack(path: $router.birdRoutes) {
            Button("Go to bird detail") {
                router.birdRoutes.append(.detail("Sparrow"))
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
