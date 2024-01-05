//
//  BackyardNavigationStack.swift
//  ProgrammaticRoutingInSwiftUIForTabViewAppsInSwiftUI
//
//  Created by test on 05.01.2024.
//

import Foundation
import SwiftUI

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
