//
//  Router.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

import Foundation
import Observation

@Observable
class Router {
    var birdRoutes: [BirdRoute] = []
    var plantRoutes: [PlantRoute] = []
    var backyardRoutes: [BackyardRoute] = []
}
