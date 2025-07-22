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
                    Text("")
                        .tabItem {
                            Label("Главная", systemImage: "house")
                        }

                    Text("")
                        .tabItem {
                            Label("Мои Желания", systemImage: "star")
                        }

                    Text("")
                        .tabItem {
                            Label("Друзья", systemImage: "person.2")
                        }        }
    }
}
    #Preview {
        ContentView()
    }

