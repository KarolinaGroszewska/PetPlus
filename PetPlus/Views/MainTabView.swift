//
//  SwiftUIView.swift
//  PetPlus
//
//  Created by Kari Groszewska on 7/7/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selection: Int = 0
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView {
                //TODO: Replace Dashboard Views with Custom Views
                Text("Food")
                    .tabItem {
                        Label("Food", systemImage: "fork.knife.circle.fill")
                    }
                    .tag(0)
                Text("Exercise")
                    .tabItem {
                        Label("Exercise", systemImage: "figure.run.circle.fill")
                    }
                    .tag(1)
                Text("Home")
                    .tabItem {
                        EmptyView()
                    }
                    .tag(2)
                Text("Services")
                    .tabItem {
                        Label("Services", systemImage: "magnifyingglass.circle.fill")
                    }
                    .tag(3)
                Text("Profile")
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle.fill")

                    }
                    .tag(4)
            }
            Button {
            } label: {
                Image(systemName: "house")
                    .tint(Color(.white))
                    .font(.title)
            }
            .frame(width: 50, height: 50)
            .background(Color("mainColor"))
            .clipShape(Circle())
        }
        
        .ignoresSafeArea(.keyboard)
        .onChange(of: selection, perform: { [selection] newValue in
            if newValue == 2 {
                self.selection = selection
            }
        })
    }
}

#Preview {
    MainTabView()
}
