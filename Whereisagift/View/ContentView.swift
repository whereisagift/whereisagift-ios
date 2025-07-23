//
//  ContentView.swift
//  Whereisagift
//
//  Created by Artem Poletaev on 22.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            WishesView()
                .tabItem {
                    Label("Мои Желания", systemImage: "star")
                }
            
           FriendsView()
                .tabItem {
                    Label("Друзья", systemImage: "person.2")
                }        }
    }
}
#Preview {
    ContentView()
}

