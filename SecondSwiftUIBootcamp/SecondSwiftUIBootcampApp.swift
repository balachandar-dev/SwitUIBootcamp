//
//  SecondSwiftUIBootcampApp.swift
//  SecondSwiftUIBootcamp
//
//  Created by Janani on 4/6/24.
//

import SwiftUI

@main
struct SecondSwiftUIBootcampApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
