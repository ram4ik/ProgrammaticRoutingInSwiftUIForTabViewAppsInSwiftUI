//
//  BirdDetailScreen.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

import Foundation
import SwiftUI

struct BirdDetailScreen: View {
    
    @Environment(Router.self) private var router
    
    let name: String
    
    var body: some View {
        Button("Bird Photo Screen") {
            router.birdRoutes.append(.home)
        }
    }
}
