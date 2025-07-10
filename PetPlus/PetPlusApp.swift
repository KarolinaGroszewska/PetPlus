//
//  PetPlusApp.swift
//  PetPlus
//
//  Created by Kari Groszewska on 7/5/25.
//

import SwiftUI
import SwiftData

@main
struct PetPlusApp: App {
    init() {
     UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont.init(name: "Poppins-Regular", size: 12)! ], for: .normal)
    }
//    var sharedModelContainer: ModelContainer = {
//        let schema = Schema([
//            Item.self,
//        ])
//        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
//
//        do {
//            return try ModelContainer(for: schema, configurations: [modelConfiguration])
//        } catch {
//            fatalError("Could not create ModelContainer: \(error)")
//        }
//    }()

    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
//        .modelContainer(sharedModelContainer)
    }
}
