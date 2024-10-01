//
//  ScottysMapApp.swift
//  ScottysMapApp
//
//  Created by Scotty Schwartz-Owen on 7/30/24.
//

import SwiftUI

@main
struct ScottysMapApp: App {

	@StateObject private var vm = LocationsViewModel()

    var body: some Scene {
        WindowGroup {
					LocationsView()
						.environmentObject(vm)
        }
    }
}
