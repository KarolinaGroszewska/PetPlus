//
//  SwiftUIView.swift
//  PetPlus
//
//  Created by Kari Groszewska on 7/7/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                FoodView()
                    .tabItem {
                        Label("Food", systemImage: "fork.knife.circle.fill")
                    }
                ExerciseView()
                    .tabItem {
                        Label("Exercise", systemImage: "figure.run.circle.fill")
                    }
                DashboardView()
                    .tabItem {
                        Label("Dashboard", systemImage: "house.circle.fill")
                    }
                ServicesView()
                    .tabItem {
                        Label("Services", systemImage: "magnifyingglass.circle.fill")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle.fill")

                    }
            }
        }
        .ignoresSafeArea(.keyboard)
    }
}

#Preview {
    MainTabView()
}
